from flask import Flask, render_template, request, jsonify, redirect
import os
from flask_mysqldb import MySQL
from openai import OpenAI
from datetime import datetime
from flask_mail import Mail, Message
from dotenv import load_dotenv

app = Flask(__name__)

load_dotenv()

app.config['MYSQL_HOST'] = "localhost"
app.config['MYSQL_USER'] = "root"
app.config['MYSQL_PASSWORD'] = ""
app.config['MYSQL_DB'] = "menopause"

mysql = MySQL(app)

# mail configuration
# mail_username = os.getenv('MAIL_PASSWORD')
# mail_password = os.environ.get('MAIL_PASSWORD')
app.config['MAIL_SERVER'] = "smtp-relay.brevo.com"
app.config['MAIL_PORT'] = 587
app.config['MAIL_USE_TLS'] = True
app.config['MAIL_USE_SSL'] = False
# app.config['MAIL_USERNAME'] = os.getenv('MAIL_USERNAME')
app.config['MAIL_USERNAME'] = "7b0831001@smtp-brevo.com"
app.config['MAIL_PASSWORD'] = os.environ.get('MAIL_PASSWORD')
app.config['MAIL_DEFAULT_SENDER'] = "chinazachukwunweike55@gmail.com"
mail = Mail(app)

# OpenAI API key
client = OpenAI(
    api_key = os.getenv('API_KEY')
)

messages = [{"role": "system", "content": "Your name is Marv. Marv is a menopausal consultant and coach."}]
question_options = {
    1: {"question": "To provide the best assistance, could you please start by telling me your age?", "answer":  ["Under 40", "40 - 49", "50 - 59", "60 and Over"]},
    2: {"question": "Can you describe you menstral cycle", "answer":  ["Regular like clock work", "Not Regular For under 12 months", "Not Regular For over 12 months", "Have not seen for over 12 months"]},
    3: {"question": "What are the symptoms you are experiencing? Select all that apply", "answer":  ["Fatigue","Hot Flushes","Sleep","Mood Swings","Restless Legs","Vaginal Dryness","Anxiety","Brain Fog","Depression","Dizzy Spells","Panic Disorders","Breast Pain","Cramps","Gut Health","Electric Shocks","Headaches","Joint Pain","Tension","Brittle Nails","Hair Thinning","Itchy Skin","Tingling","Allergies","Burning Tongue","Gum Issues","Osteoporosis"]},
    4: {"question": "What is your main concern", "answer":  ["Sleep", "Joint Pain", "Brain Fog", "Hot Flushes", "Intimacy"]},
    5: {"question": "Which of the following sleep problems are you facing?", "answer":  ["Having trouble getting to sleep", "I find myself waking up at night", "I sleep like a baby", "I get restless legs ", "I get Night Sweats "]},
    6: {"question": "Do you like lavender?", "answer":  ["Yes", "No", "I do not know"]},
}

# Route to index Page
@app.route('/')
def index():
    return render_template('index.html')

# Rout to Chatbot Page
@app.route('/chatbot')
def chatbot():
    return render_template('chatbot.html')

# Route to consultation Page
@app.route('/book_consultation', methods=['POST','GET'])
def consultation():
    if request.method == 'GET':
        return render_template('consultation.html')
    elif request.method == 'POST':
        try:
            fullname = request.form['Fullname']
            email = request.form['email']
            purpose = request.form['purpose']
            appointmentDate = request.form['appointmentDate']
            time = request.form['time']

            
            if fullname == "" or email == "" or purpose == "" or appointmentDate == "" or time == "Select Time:":
                return render_template('consultation.html', errmessage="Please, fill out the requred fields")

            appointmentDate = datetime.strptime(appointmentDate, "%Y-%m-%d")
            currentDate = datetime.now()

            if appointmentDate <= currentDate:
                return render_template('consultation.html', errmessage="Invalid date format, Please pick a valid date")

            # SQL Query to upload users details to consultation table on the database
            cursor = mysql.connection.cursor()
            sql = "INSERT INTO consultations (name, email, purpose, appointmentDate, appointmentTime) VALUES(%s,%s,%s,%s,%s)"
            values = (fullname,email,purpose, appointmentDate,time)
            upload_success = cursor.execute(sql, values)
            mysql.connection.commit()

            cursor.close()

            # Send message to user's email
            if upload_success:
                subject = "CONSULTATION BOOKING CONFRIMATION!!!"
                body = f"Hello {fullname}, \n This email is to confirm your consultation booking appointment with our Menopause expert \n\n Time: 12pm - 13pm \n Date: 13th September, 2024. \n\n Kind regard,\n Shhh Menopause Team"
                msg = Message(subject, recipients=[email])
                msg.body = body
                mail.send(msg)
                print(email)

                return render_template('index.html', successmessage="Your consultation has been booked successfully.")
        except Exception as error:
            return "Sorry an error occured",error
        # return redirect('/chatbot')

# Dynamic Route to get response id and upload user's satisfactory rating
@app.route('/response_rating/<int:response_id>', methods=['GET','POST'])
def response_rating(response_id):
    if request.method == 'GET':
        return render_template('rating.html', response_id= response_id)
    elif request.method == 'POST':
        rating = request.form['rating']

        cursor = mysql.connection.cursor()
        rating_sql = "UPDATE responses SET satisfactory_rate = %s WHERE response_id = %s"
        values = (rating, response_id)
        rating_success = cursor.execute(rating_sql, values)
        mysql.connection.commit()
        cursor.close()
        return render_template('consultation.html', successmessage="Rating successfully submitted")

# route to send answer options to the frontend
@app.route('/get_options', methods=['GET'])
def get_options():
    # fetch questions from database and load each one into an empty dictionary
    return jsonify({"question_options": question_options, "length": len(question_options)})

# Route to get user's response from the form
@app.route('/get_response', methods=['POST'])
def get_response():
    selectedOptions = request.json.get("selectedValues")
    age = selectedOptions['q1']
    menstrual_cycle = selectedOptions['q2']
    symptoms = ', '.join(selectedOptions['q3'])
    concern = selectedOptions['q4']
    sleep_trouble = selectedOptions['q5']
    lavender = selectedOptions['q6']

    print(selectedOptions, symptoms)
    user_message = f"Hi Joe, I am {age} and my menstrual cycle is {menstrual_cycle}. I am experiencing some menopausal symptoms such as {symptoms} and need advice. My main concern is {concern}. I am {sleep_trouble} and I {lavender}lavender"  
    messages.append({"role": "user", "content": user_message})

    response = client.chat.completions.create(
        # model="ft:gpt-3.5-turbo-0125:cader::9o4jRhwA",
        model="ft:gpt-3.5-turbo-0125:cader::9pEoCI81",
        messages=messages
        # temperature=0.2
    )

    if response:
        chatbot_response = response.choices[0].message.content
        messages.append({"role": "assistant", "content": chatbot_response})

        # SQL QUERY to send users selected options to the database
        cursor = mysql.connection.cursor()
        ressql = "INSERT INTO responses (question1_option, question2_option, question3_option, question4_option, question5_option, question6_option, chatbot_response,satisfactory_rate) VALUES(%s,%s,%s,%s,%s,%s,%s,%s)"
        values = (age,menstrual_cycle,symptoms, concern, sleep_trouble, lavender,chatbot_response, '')
        response_success = cursor.execute(ressql, values)
        mysql.connection.commit()
        response_id = cursor.lastrowid
        cursor.close()
        
        print("data has been inserted successfully")
        return jsonify({"response": chatbot_response, "response_id": response_id})


if __name__ == '__main__':
    app.run(debug=True)

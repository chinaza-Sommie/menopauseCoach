# Menopause Consultation Web App

This project is a Flask-based web application for managing consultations related to menopause. It provides users with an interactive chatbot, consultation booking, and email notifications.

## Table of Contents

1. [Features](#features)
2. [Prerequisites](#prerequisites)
3. [Installation](#installation)
4. [Configuration](#configuration)
5. [Running the Application](#running-the-application)
6. [Database Setup](#database-setup)
7. [Usage](#usage)
8. [Contributing](#contributing)
9. [License](#license)

## Features

- **Chatbot**: An interactive chatbot for menopausal consultation.
- **Consultation Booking**: Users can book consultations with an expert.
- **Email Notifications**: Sends email confirmation upon successful booking.
- **Response Rating**: Allows users to rate the response provided by the chatbot.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Python 3.x installed on your machine.
- MySQL server installed and running.
- Node.js and npm (for front-end dependencies and building).
- Flask and other necessary Python packages installed.
- Access to an SMTP server for sending emails (e.g., Brevo, Gmail).

## Installation

Follow these steps to set up and run the project on your local machine:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/your-username/menopause-consultation-web-app.git
    cd menopause-consultation-web-app
    ```

2. **Create a virtual environment** (recommended):
    ```bash
    python -m venv venv
    source venv/bin/activate   # On Windows, use `venv\Scripts\activate`
    ```

3. **Install the required Python packages**:
    ```bash
    pip install -r requirements.txt
    ```

4. **Install Node.js dependencies** (if applicable for front-end):
    ```bash
    npm install
    ```

## Configuration

1. **Environment Variables**: Create a `.env` file in the root directory and set up the following environment variables:

    ```bash
    MYSQL_USER=root
    MYSQL_PASSWORD=your_mysql_password
    MYSQL_DB=menopause
    MAIL_PASSWORD=your_email_password
    MAIL_USERNAME=7b0831001@smtp-brevo.com
    API_KEY=your_openai_api_key
    ```

    Replace the placeholder values with your actual credentials.

2. **Flask Configuration**: Configuration for MySQL, OpenAI, and Flask-Mail is already set up in `app.py`. Ensure these configurations match your local environment.

## Running the Application

1. **Start the Flask server**:
    ```bash
    python app.py
    ```

    This command will start the server in debug mode on `http://127.0.0.1:5000`.

2. **Access the Web App**:
    Open your web browser and navigate to `http://127.0.0.1:5000`.

## Database Setup

1. **Create a MySQL Database**:
    - Log in to your MySQL server and create a new database named `menopause`.

    ```sql
    CREATE DATABASE menopause;
    ```

2. Tables can be created in 2 ways:
    1. import the db.sql file in this project directory.
    2. **Manually Create Tables**:
    - Run the following SQL commands to create the necessary tables:

    ```sql
    CREATE TABLE consultations (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL,
        purpose TEXT NOT NULL,
        appointmentDate DATE NOT NULL,
        appointmentTime VARCHAR(50) NOT NULL
    );

    CREATE TABLE responses (
        response_id INT AUTO_INCREMENT PRIMARY KEY,
        question1_option VARCHAR(255),
        question2_option VARCHAR(255),
        question3_option TEXT,
        question4_option VARCHAR(255),
        question5_option VARCHAR(255),
        question6_option VARCHAR(255),
        chatbot_response TEXT,
        satisfactory_rate VARCHAR(50)
    );
    ```

## Usage

- **Chatbot Interaction**: Navigate to the Chatbot page and interact with the AI-powered menopause consultant.
- **Book a Consultation**: Go to the consultation booking page, fill in the required details, and book an appointment.
- **Rate Responses**: After interacting with the chatbot, rate the responses you receive.




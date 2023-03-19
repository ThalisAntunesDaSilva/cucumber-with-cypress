Feature: Contact Form Validation on Web

    Scenario: Submitting valid form data
        Given we are in on  form page
        When we go fills all fields correctly
        Then the form data is sent to the backend
        And the email is successfully sent to the receiver

    Scenario: Invalid Name field

        Given we are in on  form page
        When we do fills in the Name field with an invalid character like as a symbol @
        Then the form data is not sent to the backend
        And an error message "Campo Name inválido." is displayed on the page

    Scenario: Invalid Email field

        Given we are in on  form page
        When we do fills in the Email field with an invalid format like as "pagbrasil@com" without a valid domain
        Then the form data is not sent to the backend
        And an error message "Campo Email inválido." is displayed on the page

    Scenario: Invalid Company field

        Given we are in on  form page
        When we go fills in the Company field with an invalid character like as a symbol @
        Then the form data is not sent to the backend
        And an error message "Campo Company inválido." is displayed on the page

    Scenario: Invalid Website field

        Given we are in on  form page
        When we go fills in the Website field with an invalid format like as "@_.com" without a protocol
        Then the form data is not sent to the backend
        And an error message "Campo Website Inválido." is displayed on the page

    Scenario: Invalid Phone field

        Given we are in on  form page
        When we go fills in the Phone field with an invalid format such as "123456789"
        Then the form data is not sent to the backend
        And an error message "Campo Phone Inválido." is displayed on the page

    Scenario: Invalid Inquiry field
        Given we are in on  form page
        When we go fills in the Inquiry field with more than 500 characters
        Then the form data is not sent to the backend
        And an error message "Campo Inquiry Inválido." is displayed on the page

    Scenario: Submitting a form with a name field exceeding the maximum character limit
        Given we are in on  form page
        When the user enters a name with more than 255 characters into the "Name" field
        And the user clicks on the "Submit" button
        Then the API should not receive any data
        And an error message "Campo Name Inválido." should be displayed on the frontend

    Scenario: Submitting a form with an email field exceeding the maximum character limit
        Given we are in on  form page
        When the user enters an email with more than 150 characters into the "Email" field
        And the user clicks on the "Submit" button
        Then the API should not receive any data
        And an error message "Campo Email Inválido." should be displayed on the frontend

    Scenario: Submitting a form with a company field exceeding the maximum character limit
        Given we are in on  form page
        When the user enters a company name with more than 200 characters into the "Company" field
        And the user clicks on the "Submit" button
        Then the API should not receive any data
        And an error message "Campo Company Inválido." should be displayed on the frontend

    Scenario: Submitting a form with a website field exceeding the maximum character limit
        Given we are in on  form page
        When the user enters a website with more than 200 characters into the "Website" field
        And the user clicks on the "Submit" button
        Then the API should not receive any data
        And an error message "Campo Website Inválido." should be displayed on the frontend

    Scenario: Submitting a form with a phone field exceeding the maximum character limit
        Given we are in on  form page
        When the user enters a phone number with more than 15 characters into the "Phone" field
        And the user clicks on the "Submit" button
        Then the API should not receive any data
        And an error message "Campo Phone Inválido." should be displayed on the frontend

    Scenario: Submitting a form with an inquiry field exceeding the maximum character limit
        Given we are in on  form page
        When the user enters an inquiry with more than 500 characters into the "Inquiry" field
        And the user clicks on the "Submit" button
        Then the API should not receive any data
        And an error message "Campo Inquiry Inválido." should be displayed on the frontend

    Scenario: Submitting the form with all fields blank
        Given we are in on  form page
        When we go submit the form with empty fields
        Then We will see an error message "Campo Name inválido."
        And  We will see an error message "Campo Email inválido."
        And  We will see an error message "Campo Company inválido."
        And  We will see an error message "Campo Website inválido."
        And We will see an error message "Campo Phone inválido."
        And  We will see an error message "Campo Inquiry inválido."
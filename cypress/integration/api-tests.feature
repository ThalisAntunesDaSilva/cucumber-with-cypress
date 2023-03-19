Feature: Contact Form Validation on Postman

    Scenario: Submitting valid form data
        Given I have entered valid contact form data
        When I submit the form data to the backend API on Postman
        Then the API should return a success response with HTTP code 200
        And the response should contain "sucesso": true

    Scenario: Invalid Name field
        Given I have entered invalid data in the Name field
        When we do fills in the Name field with an invalid character like as a symbol @ to the backend API on Postman
        Then the API should return an error response with HTTP code 412
        And the response should contain "sucesso": false
        And the response should contain "erro": "Campo Name inválido."

    Scenario: Invalid Email field
        Given I have entered invalid data in the Email field
        When we do fills in the Email field with an invalid format like as "pagbrasil@com" without a valid domain to the backend API on Postman
        Then the API should return an error response with HTTP code 412
        And the response should contain "sucesso": false
        And the response should contain "erro": "Campo Email inválido."

    Scenario: Invalid Company field
        Given I have entered invalid data in the Company field
        When we go fills in the Company field with an invalid character like as a symbol @ to the backend API on Postman
        Then the API should return an error response with HTTP code 412
        And the response should contain "sucesso": false
        And the response should contain "erro": "Campo Company inválido."

    Scenario: Invalid Website field
        Given I have entered invalid data in the Website field
        When we go fills in the Website field with an invalid format like as "@_.com" without a protocol the backend API on Postman
        Then the API should return an error response with HTTP code 412
        And the response should contain "sucesso": false
        And the response should contain "erro": "Campo Website inválido."

    Scenario: Invalid Phone field
        Given I have entered invalid data in the Phone field
        When we go fills in the Phone field with an invalid format like as "123456789"  to the backend API on Postman
        Then the API should return an error response with HTTP code 412
        And the response should contain "sucesso": false
        And the response should contain "erro": "Campo Phone inválido."

    Scenario: Invalid Inquiry field
        Given I have entered invalid data in the Inquiry field
        When we go fills in the Inquiry field with more than 500 characters to the backend API on Postman
        Then the API should return an error response with HTTP code 412
        And the response should contain "sucesso": false
        And the response should contain "erro": "Campo Inquiry inválido."



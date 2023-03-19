Feature: Performance of form contact

    Scenario: Submitting a form with valid data

        Given the user is on the form submission page
        When the user enters a valid name with 255 characters
        And enters a valid email with 150 characters
        And enters a valid company name with 200 characters
        And enters a valid website URL with 200 characters
        And enters a valid phone number with 15 characters
        And enters a valid inquiry with 500 characters
        And submits the form
        Then the form should be submitted successfully within 5 seconds

    Scenario: Submitting multiple forms concurrently

        Given multiple users are on the form submission page
        When each user enters valid data in their form
        And submits the form concurrently with other users
        Then each form should be submitted successfully within 5 seconds

    Scenario: Submitting large number of forms in a short time

        Given the user is on the form submission page
        When the user submits 50 forms within 1 minute
        Then all forms should be submitted successfully within 5 seconds each
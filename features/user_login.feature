Feature: User Login
    In order to use our site
    A user should be able to Login
    Using their email address

    Background:
      Given I am on the homepage
      And I visit the "Login" link

      Scenario: Login page exists
        Then I should see a login page

      Scenario: Login with a valid user data
        And I login with valid user data
        Then I should see a successful sign in message

      Scenario: Login with invalid credentials
        When I login with invalid credentials
        Then I should see an invalid credential message

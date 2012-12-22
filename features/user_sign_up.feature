Feature: User Sign up
    In order to use our site
    A user should be able to sign up
    Using their email address

    Background:
      Given I am on the homepage
      And I visit the "Sign up" link

      Scenario: Sign up page exists
        Then I should see a sign up page

      Scenario: Sign up with a valid email and password
        And I sign up with valid user data
        Then I should see a successful sign up message

      Scenario: Sign up with invalid email 
        When I sign up with invalid email
        Then I should see an invalid email message

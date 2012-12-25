Feature: Home Page
  When a user visits our site
  They should see a home page
  With some links


  Scenario: Home page has basic links
    When I visit the home page
    Then I see a "About Us" link
    And I see a "Contact Us" link
    And I see a "Sign up" link
    And I see a "Login" link
    And I see a "Leagues" link

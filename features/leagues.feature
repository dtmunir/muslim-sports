Feature: View and Create leagues
  In order to have leagues in the system
  A user should be able to view existing leagues
  And create new leagues
  
  Background:
    Given the following Leagues exist
      | name                | sport   |
      | Karachi Kangaros    | Cricket |
      | Lahore Lions        | Cricket |     
    When I visits the league page

    Scenario: Viewing Existing leagues
      And I click "Karachi Kangaros"
      Then I should see "Cricket"

    Scenario: Creating a new league
      And I click "New League"
      And I create the following league
        | name                | sport   |
        | Islamabad Eagles    | Cricket |
      And I visit the league page
      Then I should see "Islamabad Eagles"


    Scenario: Edit a league
      And I click "Karachi Kangaros"
      And I change the name to "Karachi Kangaroos"
      And I visit the league page
      Then I should see "Karachi Kangaroos"



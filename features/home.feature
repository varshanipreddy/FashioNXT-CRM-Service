Feature: Home Button & Log Out Button
  As a user of the service
  I want to have the button to the home page
  So I can navigate to the home page/logout from any page of the website

  Background:
    Given User is logged in

  Scenario Outline: User clicks the "Home" button from other pages
    Given User is on "<a page that is not the dashboard page>"
    When User clicks on "Home"
    Then User should be redirected to the dashboard

    Examples:
      | a page that is not the dashboard page |
      | /admin                                |
      | /logs                                 |
      | /companies                            |
      | /posts                                |
      | /crmusers                             |

  Scenario Outline: User clicks the "Log Out" button from other pages
    Given User is on "<a page that is not the dashboard page>"
    When User clicks on "Log Out"
    Then User should be redirected to the login page

    Examples:
      | a page that is not the dashboard page |
      | /admin                                |
      | /logs                                 |
      | /companies                            |
      | /posts                                |
      | /crmusers                             |

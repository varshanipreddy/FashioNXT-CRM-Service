Feature: Create new post
  As a user
  I want to create a new post
  So that I can share information with customers

  Scenario: Create new post with title, content and image
    Given I am on the new post page
    When I fill in "Title" with "My Post"
    And I fill in "Content" with "This is a test post"
    And I attach the file "test_image1.jfif" to "Image"
    And I click the "Create Post" button
    Then I should be on the show post page
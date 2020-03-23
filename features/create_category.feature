Feature: Create Categories
  As an admin
  In order to separate content by topic
  I want to create categories for my blog articles


  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create new categories
    Given I am on the new categories page
    When I fill in "category_name" with "Science"
    And I fill in "category_keywords" with "Physics"
    And I fill in "category_description" with "Physics is the science of matter and its motion."
    Then I press "Save"
    Then I should see "Category was successfully saved"

  Scenario: Create blog page not shown when blog created
    Given the blog is set up
    When I am on the home page
    Then I should not see "My Shiny Weblog!"
    And I should see "Teh Blag"

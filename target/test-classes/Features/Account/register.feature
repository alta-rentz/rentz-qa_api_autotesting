@Register
Feature: Register
  As a Rentz Web API
  I want to see my account
  So that I can edit my account

  @Success
  Scenario: Register Success
    Given I am on the register page
    When I enter my name,email,password,phone correctly
    And I click 'Submit' buttons
    Then I am taken to the Home_Page

  @Failed
  Scenario: Register with nama exist
    Given I am on the register page
    When I enter my nama exist,email, phone, password
    And I click 'Submit' buttons
    Then I am failed to register

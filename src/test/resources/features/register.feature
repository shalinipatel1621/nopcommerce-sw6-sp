@regression
Feature: Register Feature
  As a User,I am able to register successfully

  @author_SP @sanity @smoke @regression
  Scenario: verifyUserShouldNavigateToRegisterPageSuccessfully
    Given I am on homepage
    When I click on register link
    Then Navigate to register Page
    And Verify "Register" text is displayed

  @author_SP @smoke @regression
  Scenario: verifyThatFirstNameLastNameEmailPasswordAndConfirmPasswordFieldsAreMandatory
    Given I am on homepage
    When I click on register link
    Then Navigate to register Page
    And I click on REGISTER button
    And verify that "First name is required" message is displayed in firstname field
    And verify that "Last name is required" message is displayed in lastname field
    And verify that "Email is required" message is displayed in email field
    And verify that "Password is required" message is displayed in password field
    And verify that "Password is required" message is displayed in confirm password field

  @author_SP @regression
  Scenario: verifyThatUserShouldCreateAccountSuccessfully
    Given I am on homepage
    When I click on register link
    Then Navigate to register Page
    And I select gender as "Female"
    And I enter firstname "Sheldon"
    And I enter lastname "Cooper"
    And I select the day "1"
    And I select the month "January"
    And I select the year "1980"
    And I enter the email "sheldoncooper@gmail.com"
    And I enter the password "sheldoncooper"
    And I enter the password in confirm password "sheldoncooper"
    And I click on REGISTER button
    And verify that the "Your registration completed" message is displayed
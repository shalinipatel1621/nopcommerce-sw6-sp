@regression
Feature: Login Feature
  As a User,I am able to login successfully

  @author_SP @sanity @smoke @regression
  Scenario: userShouldNavigateToLoginPageSuccessFully.
    Given I am on homepage
    When I click on login link
    Then  Navigate to LoginPage
    And verify that "Welcome, Please Sign In!" message is display

  @author_SP @smoke @regression
  Scenario: Verify the error message with invalid credentials
    Given I am on homepage
    When I click on login link
    And I enter email "primenewtester@gmail.com"
    And I enter password "prime1"
    And I click on login button
    Then I should see the error message

  @author_SP @regression
  Scenario: verifyThatUserShouldLogInSuccessFullyWithValidCredentials.
    Given I am on homepage
    When I click on login link
    And I enter email "primedatatester@gmail.com"
    And I enter password "prime123"
    And I click on login button
    Then Verify that LogOut link is display

  @author_SP @regression
  Scenario: VerifyThatUserShouldLogOutSuccessFully
    Given I am on homepage
    When I click on login link
    And I enter email "primedatatester@gmail.com"
    And I enter password "prime123"
    And I click on login button
    And Click on LogOut Link
    Then Verify that LogIn Link Display
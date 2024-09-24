*** Settings ***
Documentation    This is an E2E test challenge
Resource    ../Resources/HRMGUI.robot
Resource    ../Resources/Common.robot

Test Setup       Set Up Browser
Test Teardown    End Web Test


*** Test Cases ***

Successful login with valid credentials
  Given User is on the login page
  When User enters valid credentials
  And Click the login button
  Then User should be redirected to the dashboard

Unsuccessful login with invalid credentials
  Given User is on the login page
  When User enters invalid credentials
  And Click the login button
  Then Error message should be displayed

Update user profile information
  Given User is on the login page
  When User navigates to the profile page
  And Update the profile information
  Then the profile information should be updated successfully

Filter employee list by job title
  Given User is on the login page
  When User navigates to the employee list
  And Applies the job title filter
  Then Only employees with the selected job title should be displayed

Scroll through employee list
  Given User is on the login page
  When User navigates to the employee list
  And Scrolls down the list
  Then All employees should be visible
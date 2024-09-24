*** Settings ***
Library         SeleniumLibrary
Resource    ../Resources/PO/Login.robot
Resource    ../Resources/PO/Update.robot
Resource    ../Resources/PO/Filtre.robot
Resource    ../Resources/PO/Scroll.robot
*** Keywords ***
#Test Case1
User is on the login page
    Login.Load Page
User enters valid credentials
    Login.Use valid credentials

Click the login button
    Login.Login to the page

User should be redirected to the dashboard
    Login.Verify Page Loaded Successfully

#Test Case 2
User enters invalid credentials
    Login.Use invalid credentials

Error message should be displayed
    Login.Verify Page Loaded Unsuccessfully

#Test Case 3
User navigates to the profile page
    Login.Use valid credentials
    Login.Login to the page
    Login.Verify Page Loaded Successfully
    Update.Navigate to the profile page

Update the profile information
    Update.Update profile

the profile information should be updated successfully
    Update.Profile information is updated successfully

#Test Case 4
User navigates to the employee list
    Login.Use valid credentials
    Login.Login to the page
    Login.Verify Page Loaded Successfully
    Filtre.Navigate to the employee list

Applies the job title filter
    Filtre.Apply Filter

Only employees with the selected job title should be displayed
    Filtre.Employees with the selected job title should be displayed


#Test Case 5
Scrolls down the list
    Scroll.Scroll Web Page

All employees should be visible
    Scroll.Validate Scrolling
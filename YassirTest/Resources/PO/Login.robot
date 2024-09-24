*** Settings ***
Library    SeleniumLibrary
Resource   ../Variables.robot
*** Keywords ***

Load Page
    Go To                                    ${Url}
    Maximize Browser Window
    Title should be                         OrangeHRM
    Wait Until Element Is Visible           name=username
    Wait Until Element Is Visible           name=password
    Wait Until Element Is Visible           xpath=//button[text()=' Login ']

Use valid credentials
    Input text                              name=username    ${UserName}
    Input text                              name=password    ${Password}

Login to the page
    Click button                            xpath=//button[text()=' Login ']

Verify Page Loaded Successfully
    page should contain                     Dashboard



Use invalid credentials
    Input text                              name=username    ${InvalidUsername}
    Input text                              name=password    ${Password}

Verify Page Loaded Unsuccessfully
    page should contain                     Invalid credentials
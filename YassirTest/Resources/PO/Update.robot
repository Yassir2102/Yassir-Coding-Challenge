*** Settings ***
Library    SeleniumLibrary
Resource   ../Variables.robot


*** Keywords ***

Navigate to the profile page

    click element    xpath= //a[contains(@href, '/web/index.php/pim/viewMyDetails')]
    Wait until page contains    Personal Details

Update profile
    Log To Console         Clearing first name field using JavaScript with events
    Execute JavaScript     var input = document.querySelector("input[name='firstName']"); input.value = ''; input.dispatchEvent(new Event('input')); input.dispatchEvent(new Event('change'));
    input text             name=firstName    Yassir
    Log To Console         Clearing last name field using JavaScript with events
    Execute JavaScript     var input = document.querySelector("input[name='lastName']"); input.value = ''; input.dispatchEvent(new Event('input')); input.dispatchEvent(new Event('change'));
    input text             name=lastName     Arrakhiz
    Scroll Element Into View    xpath=(//button[contains(., 'Save')])[1]
    wait until page contains    Save
    Click Element    (//button[contains(., 'Save')])[1]

Profile information is updated successfully

    click element    xpath= //a[contains(@href, '/web/index.php/pim/viewMyDetails')]
    Wait until page contains    Personal Details
    page should contain    Yassir Arrakhiz


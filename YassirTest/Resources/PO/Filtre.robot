*** Settings ***
Library    SeleniumLibrary
Resource   ../Variables.robot


*** Keywords ***

Navigate to the employee list
    click element         xpath= //a[contains(@href, '/web/index.php/pim/viewPimModule')]
    wait until page contains    PIM


Apply Filter
    Click Element    xpath=//label[text()='Employment Status']/following::div[contains(@class,'oxd-select-text-input')][1]
    Click Element    xpath=//div[contains(@class,'oxd-select-option')]//span[text()='Full-Time Contract']
    page should contain    Search
    Click Element      xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]

Employees with the selected job title should be displayed
    scroll element into view    xpath=//*[@id="app"]/div[1]/div[2]/div[3]/p[1]
    page should contain    (1) Record Found
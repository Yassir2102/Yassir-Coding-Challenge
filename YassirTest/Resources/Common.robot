*** Settings ***
Library         SeleniumLibrary

*** Keywords ***

Set Up Browser

    Set selenium speed                       0.7s
    Set selenium timeout                     10s
    Open Browser                            about:blank   chrome

End Web Test
    Close Browser

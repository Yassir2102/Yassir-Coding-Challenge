*** Settings ***
Library    SeleniumLibrary
Resource   ../Variables.robot


*** Keywords ***

Scroll Web Page
    Execute JavaScript    window.scrollTo({ top: document.body.scrollHeight, behavior: 'smooth' });  # Scroll to bottom
    Sleep    1.5s
    Execute JavaScript    window.scrollTo({ top: 0, behavior: 'smooth' });
    Sleep    1.5s

Validate Scrolling
    page should contain     Records Found



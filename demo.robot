*** Settings ***
Documentation    Testing Conduit Website
Library     SeleniumLibrary



*** Variable ***
${URL}          http://staging-clusteri.rahtiapp.fi/
${title}        Welcome to Conduit
${timeout}      3s

*** Test Cases ***
TestCase1: Navigating Webpage
    [Tags]    DEBUG
    [Setup]
     Open Conduit Website in Chrome and Maximize
     Verify the Home page title
     sleep      ${timeout}
     Click on Sign-in Link
    [Teardown]  Close Browser

*** Keywords ***
Open Conduit Website in Chrome and Maximize
    Open Browser  url=${URL}   browser=chrome
    Maximize Browser Window
    Log To Console  Open Browser succseded

Verify the Home page title
    Title Should Be  ${title}


Click on Sign-in Link
    Click Element   xpath://a[text()='Sign in']



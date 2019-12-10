*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}    http://staging-clusteri.rahtiapp.fi
${browser}    chrome


*** Test Cases ***
RegTest
    LaunchBrowser     ${url}     ${browser}
    Click Link        xpath://a[text()='Sign in']
    Input Text        xpath://input[@type='email']   manuchian@yahoo.com
    Input Password    xpath://input[@type='password']    12345678
    Click Button      xpath://button[@type='submit']


*** Keywords ***
LaunchBrowser
    [Arguments]    ${appurl}    ${appbrowser}
       Open Browser      ${url}    ${browser}
       Maximize Browser Window


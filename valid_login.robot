*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    http://staging-clusteri.rahtiapp.fi/login
${browser}    chrome
@{credential}   manuchian@yahoo.com    admin123


*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    Input Text      xpath://input[@type='email']    @{credential}[0]
    Input Password    xpath://input[@type='password']  @{credential}[1]
    Press Keys        xpath://button[@type='submit']    ENTER

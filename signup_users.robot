*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${browser}       chrome
${signup_url}    http://staging-clusteri.rahtiapp.fi/register
${fak_eurl}      https://www.fakenamegenerator.com/
${LETTERS}       qwertyuiopasdfghjklzxcvbnm
${NUMBERS}       1234567890




*** Test Cases ***
SignUpTest
   :FOR    ${i}    IN RANGE    1    5
     \    ${password}=    Generate Random String    8    ${LETTERS}
     \    Open Browser      ${fake_url}    ${browser}
     \    ${fake_name}=     Get Text    xpath:(//h3)[1]
     \    ${fake_email}=    Get Text    xpath://dl[9]//dd
     \    Close Browser
     \    Open Browser      ${signup_url}    ${browser}
     \    Input Text        xpath://*[@id="root"]/div/div/div/div/div/form/fieldset/fieldset[1]/input    ${fake_name}
     \    Input Text        xpath://input[@type='email']   ${fake_email}
     \    Input Password    xpath://input[@type='password']    ${password}
     \    Click Button      xpath://button[@type='submit']
     \    Close Browser



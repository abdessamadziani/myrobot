*** Settings ***

Library    SeleniumLibrary
Resource    ../Common.robot

# Test Setup     Open Browser     ${url}    ${Browser}
# Test Teardown       Close All Browsers

*** Variables ***
${INPUT_LOGIN}      id=user
${INPUT_PASSWORD}         id=password
${INPUT_LOGIN_VALUE}      admin
${INPUT_PASSWORD_VALUE}       admin
${BUTTON_LOGIN}       Login!
*** Keywords ***

Open Signin Page
    Open Browser     ${url}    ${Browser}
    Set Selenium Timeout         2s  
Add signin data and submit 
    Input Text    ${INPUT_LOGIN}    ${INPUT_LOGIN_VALUE}
    Set Selenium Timeout         2s  
    Input Password     ${INPUT_PASSWORD}    ${INPUT_PASSWORD_VALUE}
    Set Selenium Timeout         2s  
    Click Button    ${BUTTON_LOGIN}

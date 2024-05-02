*** Settings ***

Library    SeleniumLibrary
Resource    ../Common.robot
Library    ../../Libraries/MyCustomeLibrary.py
*** Variables ***
${neworderbtn}        neworderbtn
*** Keywords ***
Do Some Custom Thing
#trying to customize my own library
    do something special
Create new order
    Click Link    id=neworder
    Set Selenium Timeout         3s  
    Page Should Contain Element    Xpath=//*[@id="wrapper"]/section/div/article[1]/div/header/h2
    Input Text    id=productID    66
    Set Selenium Timeout         3s  
    Input Text    id=inputPassword1   1
    Set Selenium Timeout         3s  
    Select From List By Value    id=tp_select   0
    Set Selenium Timeout         3s  
    Input Text      id=card_id_filed    khaled +212653555548
    Set Selenium Timeout         3s  
    # Sleep    10s
    Wait Until Page Contains Element    id=neworderbtn    timeout=10s
    # Sleep    60s

    ${button_enabled} =    Run Keyword And Return Status    Element Should Be Enabled    id=neworderbtn
    Set Selenium Timeout         3s  
    Run Keyword If    not ${button_enabled}    Enable Button    ${neworderbtn}
    Set Selenium Timeout         3s  
    Set Selenium Timeout         3s  
    Click Button    id=neworderbtn
    Set Selenium Timeout         5s  



Enable Button
    [Arguments]    ${locator}
    Execute JavaScript    document.getElementById('${locator}').removeAttribute('disabled');



*** Settings ***

Library    SeleniumLibrary
Resource    ../Common.robot


*** Variables ***
${savebtn}    Submit


*** Keywords ***
See customers and create new one
    Click Link      Customers
    Click Link   162/
    Click Link      Customers
    Click Button    Add
    Input Text    id=card        54254544
    Input Text    Xpath=//*[@id="horizontal"]/form/div[2]/div/input    john 
    Input Text    name=family    johndeo
    Input Text    id=phoneid    +212655428974
    Input Text    id=mail2    johndeo@gmail.com
    ${button_enabled} =    Run Keyword And Return Status    Element Should Be Enabled    name=Submit
    Set Selenium Timeout         3s  
    Run Keyword If    not ${button_enabled}    Enable Buttonn   ${savebtn}
    Click Button       Save
    Page Should Contain   Customer successfully added!
    Set Selenium Timeout         3s  



Enable Buttonn
    [Arguments]    ${locator}
    Execute JavaScript    document.getElementsByName('${locator}')[0].removeAttribute('disabled');
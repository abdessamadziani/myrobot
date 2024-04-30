*** Settings ***

Library    SeleniumLibrary
Resource    ../Common.robot



*** Keywords ***
Visite a specific order and add comment
   
    ${link_exists} =    Page Should Contain Link    information
    Run Keyword If    '${link_exists}' == 'PASS'    Click Link    information
    Set Selenium Timeout    3s
    Click Link    information
    Set Selenium Timeout    3s
    Input Text    id=inputTextarea    now im going to close order after adding this comment  
    Set Selenium Timeout    3s
    Click Button  //*[@id="wrapper"]/section/div/article[1]/div[4]/section/form/div/input

Close order
    ${order_page_exists} =    Page Should Contain Button    Close the order
    Run Keyword If    '${order_page_exists}' == 'PASS'        Click Button    Close the order
    Set Selenium Timeout         3s 
    Page Should Contain Element    Xpath=//*[@id="wrapper"]/section/div[1]/article/div/header/h2
    Set Selenium Timeout         3s  
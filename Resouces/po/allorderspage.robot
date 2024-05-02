*** Settings ***

Library    SeleniumLibrary
Resource    ../Common.robot



*** Keywords ***

See all orders
    Page Should Contain Element    Xpath=//*[@id="header"]/nav/div/ul/li[1]
    Set Selenium Timeout         5s 
    Click Link    Main
    Set Selenium Timeout         3s 
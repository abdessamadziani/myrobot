*** Settings ***

Library    SeleniumLibrary
Resource    ../Common.robot



*** Keywords ***
Log out
    Click Link   Logout
    # Close All Browsers
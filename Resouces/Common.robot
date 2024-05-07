
*** Settings ***

Library    SeleniumLibrary




*** Variables ***
${Browser}      Chrome
${URL}          https://demo.playground-crm.com/

*** Keywords ***
Begin Web Test 
  Open Browser     ${URL}    ${Browser}
  Set Log Level    debug

End Web Test
  Close All Browsers


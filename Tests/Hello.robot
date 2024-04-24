# first step is to import the selenium library
*** Settings ***
Library    SeleniumLibrary
Library    XML

# second step is to declare the variables like
# base url and browser
*** Variables ***
${Browser}      Chrome
${URL}          https://demo.playground-crm.com/
   
# third step is to write Test case in BDD 
*** Test Cases ***
 1-Open Signup Page to create a new account

   [Documentation]           Open Signup Page to create a new account
     Open Signin Page   
     Add signin data and submit 


 2-try to create new order
    [Documentation]           Create new order
      Create new order

  

 3-try to see all orders
   [Documentation]          see all orders
    See all orders
 4-try to view a specific order
   [Documentation]          see specific order
     Visite a specific order and add comment
 5-try to close order
   [Documentation]          close order
     Close order
 6-try See customers and create new one
   [Documentation]          See customers and create new one
     See customers and create new one
 7-try to log out
   [Documentation]          logout
     Log out

   




# last step is to implement the keywords following by  BDD statements
*** Keywords ***

Open Signin Page
    Open Browser     ${url}    ${Browser}
    Set Selenium Speed           2s
    Set Selenium Timeout         12s 
Add signin data and submit 
    Input Text    id=user    admin
    Input Password    id=password    admin
    Set Selenium Timeout         2s 
    Set Selenium Timeout         2s 
    Click Button    Login!

    # Click Button    Next
    # Click Button    Next
    # Click Button    Complete
    # Set Selenium Timeout         2s 
    # Page Should Contain    There are no active orders

Create new order
    Click Link    id=neworder
    Set Selenium Timeout         2s 
    Page Should Contain Element    Xpath=//*[@id="wrapper"]/section/div/article[1]/div/header/h2
    Input Text    id=productID    66
    Input Text    id=inputPassword1   1
    Select From List By Value    id=tp_select   0
    Input Text      id=card_id_filed    khaled +212653555548
    Set Selenium Timeout         2s 
    Click Button    Open order
    Set Selenium Timeout         3s 
See all orders
    Page Should Contain Element    Xpath=//*[@id="header"]/nav/div/ul/li[1]
    Set Selenium Timeout         5s 
    Click Link    Main
    Set Selenium Timeout         3s 

Visite a specific order and add comment
    Click Link    information
    Set Selenium Timeout         5s 
    Input Text    id=inputTextarea    now im going to close order after adding this comment 
    Set Selenium Timeout         2s 

Close order
    Click Button    Close the order
    Set Selenium Timeout         2s 
    Page Should Contain Element    Xpath=//*[@id="wrapper"]/section/div[1]/article/div/header/h2
    Set Selenium Timeout         2s    
See customers and create new one
    Click Link      Customers
    Set Selenium Timeout         2s 
    Click Link   162/
    Set Selenium Timeout         2s 
    Click Link      Customers
    Set Selenium Timeout         2s 
    Click Button    Add
    Input Text    id=card        658586
    Set Selenium Timeout         3s 
    Input Text    Xpath=//*[@id="horizontal"]/form/div[2]/div/input    john 
    Set Selenium Timeout         3s 
    Input Text    name=family    johndeo
    Set Selenium Timeout         3s 
    Input Text    id=phoneid    +212655428974
    Set Selenium Timeout         3s 
    Input Text    id=mail2    johndeo@gmail.com
    Sleep    10
    Set Selenium Timeout         5s 
    Click Button       Save
    Set Selenium Timeout         3s 
    Page Should Contain   Customer successfully added!
    Set Selenium Timeout         3s 
Log out
    Click Link   Logout

    Close All Browsers

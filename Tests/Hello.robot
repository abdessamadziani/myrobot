# first step is to import the selenium library
*** Settings ***

Library    SeleniumLibrary
Library    XML
Resource    ../Resouces/Common.robot
Resource    ../Resouces/po/signin.robot
Resource    ../Resouces/po/homepage.robot
Resource    ../Resouces/po/orderpage.robot
Resource    ../Resouces/po/customerspage.robot





# second step is to declare the variables like
# base url and browser
*** Variables ***
# ${Browser}      headlessChrome
# ${URL}          https://demo.playground-crm.com/
   
# third step is to write Test case in BDD 
*** Test Cases ***
 1-Open Sign in Page and login

   [Documentation]           Open Signin Page and login 
   [Tags]    1007       Smoke       Login     
    signin.Open Signin Page  
    signin.Add signin data and submit



 2-try to create new order
    [Documentation]           Create new order
     homepage.Create new order

  

 3-try to see all orders
   [Documentation]          see all orderss
    See all orders
 4-try to view a specific order
   [Documentation]          see specific order
     orderpage.Visite a specific order and add comment
 5-try to close order
   [Documentation]          close order
     orderpage.Close order
 6-try See customers and create new one
   [Documentation]          See customers and create new one
     customerspage.See customers and create new one
 7-try to log out
   [Documentation]          logout
     Log out

   




# last step is to implement the keywords following by  BDD statements
*** Keywords ***
See all orders
    Page Should Contain Element    Xpath=//*[@id="header"]/nav/div/ul/li[1]
    Set Selenium Timeout         5s 
    Click Link    Main
    Set Selenium Timeout         3s 



  

Log out
    Click Link   Logout
    Close All Browsers

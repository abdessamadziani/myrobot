# first step is to import the selenium library
*** Settings ***

Library    SeleniumLibrary
Resource    ../Resouces/Common.robot
Resource    ../Resouces/po/signin.robot
Resource    ../Resouces/po/homepage.robot
Resource    ../Resouces/po/orderpage.robot
Resource    ../Resouces/po/customerspage.robot
Resource    ../Resouces/po/topnav.robot
Resource    ../Resouces/po/allorderspage.robot
Suite Setup         Begin Web Test
Suite Teardown      End Web Test






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
    # signin.Open Signin Page  
    signin.Add signin data and submit




 2-try to create new order
    [Documentation]           Create new order
    [Tags]    1008       Smoke       Create User   
     homepage.Do Some Custom Thing
     homepage.Create new order

  

 3-try to see all orders
   [Documentation]          see all orderss
   [Tags]    1009       Smoke       ViewOrders     

    allorderspage.See all orders
 4-try to view a specific order
   [Documentation]          see specific order
   [Tags]    1010      Smoke       ViewSpecificOrder     

     orderpage.Visite a specific order and add comment
 5-try to close order
   [Documentation]          close order
   [Tags]    1011      Smoke       CloseOrder     

     orderpage.Close order
 6-try See customers and create new one
   [Documentation]          See customers and create new one
   [Tags]    1012     Smoke      ViewAndCreateCustomer     

     customerspage.See customers and create new one
 7-try to log out
   [Documentation]          logout
   [Tags]    1013     Smoke     Logout
     topnav.Log out

   







  



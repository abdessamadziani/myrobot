# first step is to import the selenium library
*** Settings ***
Library    SeleniumLibrary

# second step is to declare the variables like
# base url and browser
*** Variables ***
${Browser}      Edge
${URL}        https://www.google.fr/

# third step is to write Test case in BDD 
*** Test Cases ***
 1-Open Google Search Page and Search

   [Documentation]           Open the Google search page and search for "Robot"
    Open Google Search Page
    Search Google

 2-second test
   sleep   2
   Open Browser      https://dev.to/leading-edje/running-your-first-robot-test-31ob  ${Browser}
   sleep   2
   Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)   # Scroll to the bottom of the page
   sleep   2
   Close Browser 

3- third test
  sleep   2
  Open Browser     https://www.google.com/search?q=google+traduction&rlz=1C1GCEA_enFR1106FR1106&oq=goo&gs_lcrp=EgZjaHJvbWUqDggAEEUYJxg7GIAEGIoFMg4IABBFGCcYOxiABBiKBTIGCAEQRRhAMgYIAhBFGDkyEwgDEC4YgwEYxwEYsQMY0QMYgAQyDQgEEAAYgwEYsQMYgAQyBggFEEUYPDIGCAYQRRg8MgYIBxBFGDzSAQgxNzE4ajBqN6gCALACAA&sourceid=chrome&ie=UTF-8  ${Browser}
  sleep   1
  Click Button    id=W0wltc
  Input Text     id=tw-source-text-ta   Hello
  sleep   1
   Input Text     id=tw-source-text-ta  Hi again it is me i will go to my linkedin
  sleep   1
  Open Browser      https://www.linkedin.com/in/zianiabdessamad/  ${Browser} 
  Close Browser  



# last step is to implement the keywords following by  BDD statements
*** Keywords ***

Open Google Search Page
    Open Browser     ${url}    ${Browser}
    sleep  2
    Click Button    id=W0wltc
    sleep  2

    Input Text      name=q    Robot
    sleep  2

Search Google
    Click Button    name=btnK
    sleep  2
    Close Browser  



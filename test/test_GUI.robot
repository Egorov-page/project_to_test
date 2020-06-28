*** Settings ***

Resource    ../test/resource.robot

#Test Teardown     Close Browser

Library     PageObjectLibrary
Library     SeleniumLibrary
Library     Process
Library     ../lib/HomePage.py
Library     ../lib/LoginPage.py
Library     ../lib/ProjectPage.py

Suite Setup       Browser is opened to welcome page
Suite Teardown    Stop webapp and close all browsers

*** Keywords ***
Stop webapp and close all browsers
    Terminate all processes
    Close all browsers

Browser is opened to login page
    Open browser to login page

Browser is opened to welcome page
    Open browser to welcome page

*** Test Cases ***
Create new project
     [Setup]    Go to page  LoginPage
     user logs in with credentials  ttrvuf0@lywenw.com    Aj#%R*g54%u$x=Y
     add a new project  P1


# cd C:\Users\python\PycharmProjects\for_test
# robot test\TodoistTest.robot




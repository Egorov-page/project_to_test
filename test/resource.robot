*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${SERVER}         www.todoist.com
${BROWSER}        Chrome
${DELAY}          0.5
${VALID USER}     demo
${VALID PASSWORD}    mode
${LOGIN URL}      https://${SERVER}/users/showlogin
${WELCOME URL}    https://${SERVER}/
${ERROR URL}      https://${SERVER}/error.html

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Open Browser To Welcome Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    #Login Page Should Be Open

Close Browser
    Terminate all processes
    Close all browsers

Login Page Should Be Open
    Title Should Be    Войти в Todoist

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Todoist: список дел и управление задачами в работе и в жизни

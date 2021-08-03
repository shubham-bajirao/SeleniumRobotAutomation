*** Settings ***
Library    SeleniumLibrary
#Library    Collections

*** Variables ***


*** Test Cases ***
tc005 Run Keyword
    ${a}=    set variable    log to console
    run keyword    ${a}    PythonAutomation

    ${b}=    set variable  YES
    run keyword if    '${b}' == 'YES'    log to console    PythonRobot

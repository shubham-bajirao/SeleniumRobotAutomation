*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***
tc003 User defined Keyword
    ${Var1}=    Set Variable    HelloWorld
    log to console    ${Var1}

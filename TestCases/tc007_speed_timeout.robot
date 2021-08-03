*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${Url}   https://thetestingworld.com/testings/

#Selenium speed
*** Test Cases ***
tc007.speed timeout
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    set selenium timeout    5 seconds
    ${speed}=  get selenium timeout
    log to console    ${speed}
    wait until page contains    abc
    #wait until page contains element
    #wait until element contains
    #wait until element visible
    #wait until element enable
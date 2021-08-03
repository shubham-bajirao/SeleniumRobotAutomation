*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${Url1}   https://thetestingworld.com/testings/
${Url2}   https://google.com
#Selenium speed
*** Test Cases ***
tc007.speed timeout
    Open Browser    ${Url1}    ${Browser}
    Maximize Browser Window
    Open Browser    ${Url2}    ${Browser}
    Maximize Browser Window
    switch browser  1
    ${Url1}=  get location
    log to console  ${Url1}
    switch browser  2
    ${Url1}=  get location
    log to console  ${Url1}
    close all browsers

*** Settings ***
Library    SeleniumLibrary
default tags  default
force tags  force

*** Variables ***
${Browser}    Chrome
${Url}   https://thetestingworld.com/

#Selenium speed
*** Test Cases ***
tags
    [tags]  Smoke
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window

tags1
    execute javascript  window.scrollTo(0, 1000)
    execute javascript  window.scrollTo(0, 0)
#    open context menu
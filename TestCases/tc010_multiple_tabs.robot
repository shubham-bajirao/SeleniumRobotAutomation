#Robot Framework Foundation
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${Url1}  https://demoqa.com/browser-windows

#Selenium speed
*** Test Cases ***
tc007.speed timeout
    Open Browser    ${Url1}    ${Browser}
    Maximize Browser Window
    click element  xpath://button[@id='tabButton']
    ${list1}=  get window handles
#    log to console  ${list1}
    Switch Window  ${list1}[1]
    sleep  5 seconds
    Switch Window  ${list1}[0]
    sleep  5 seconds
    close all browsers
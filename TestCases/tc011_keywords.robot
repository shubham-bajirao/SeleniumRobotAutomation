#Robot Framework Foundation
*** Settings ***
Library    SeleniumLibrary
Resource  ..\\Resources\\Resource1.robot

#Selenium speed
*** Test Cases ***
tc007.speed timeout
    [Documentation]  this testcase is for keyword functionality
    [Timeout]  50 seconds
    ${a}=  Start browser with return value  https://google.com  Chrome
    Sleep  5 seconds
    log to console  ${a}


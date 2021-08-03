*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${Url}   https://thetestingworld.com/testings/

*** Keywords ***
#Can define user defined keywords for the repetetive lines
Enter User Details
    [Arguments]    ${name}    ${email}
    Input Text    name:fld_username    ${name}
    Input Text   xpath://input[@name='fld_email']    ${email}

#Selenium speed
*** Test Cases ***
tc006.speed
    ${speed}=    get selenium speed
    log to console    ${speed}
    Open Browser    ${Url}    ${Browser}
    set selenium speed  2 seconds
    Maximize Browser Window
#Used User defined keyword here
    Enter User Details    abc    abc@gmail.com
    Capture Page Screenshot    C:\Users\LENOVO\PycharmProjects\RobotAutomation\Screenshots\tc006.png
#   sleep    10 seconds
    Clear Element Text    name:fld_username
    Clear Element Text    xpath://input[@name='fld_email']
    ${speed}=    get selenium speed
    log to console    ${speed}




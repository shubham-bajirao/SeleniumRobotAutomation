#Robot Framework Foundation
*** Settings ***
Library    SeleniumLibrary
Library  ..\\PythonKeywords\\keywords1.py



*** Keywords ***
Start browser with return value
    [Arguments]  ${Url1}  ${Browser}
    Open Browser    ${Url1}    ${Browser}
    Maximize Browser Window
    ${title}=  get title
    [Return]  ${title}


Start Browser
    [Arguments]  ${Url1}  ${Browser}
    Open Browser    ${Url1}    ${Browser}
    Maximize Browser Window

Close Browser
    close all browsers

Before Each Test Suite
    Log  Before Each Test Suite

After Each Test Suite
    Log  After Each Test Suite

Keyword to create files
    [Arguments]  ${string1}  ${String2}
    create_keyword  ${string1}
    create_keyword1  ${String2}
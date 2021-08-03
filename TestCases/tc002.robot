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

*** Test Cases ***
tc002.text manipulations
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
#Used User defined keyword here
    Enter User Details    abc    abc@gmail.com

    Clear Element Text    name:fld_username
    Clear Element Text    xpath://input[@name='fld_email']

    Select Radio Button    add_type    home
    Select From List By Value  name:sex    1
    Select From List By Value  id:countryId    1



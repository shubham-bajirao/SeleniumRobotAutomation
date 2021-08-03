*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${SLEEP}    3

*** Test Cases ***
Login & Sign Up Forms test
    Open Browser    https://thetestingworld.com/testings    ${BROWSER}
    Input Text    //input[@name="fld_username"]    abc
    Input Text    //input[@name="fld_email"]    xyz@gmail.com
    Input Text    //input[@name="fld_password"]    ***
    Input Text    //input[@name="fld_password"]    ***
    Input Text    //input[@name="fld_cpassword"]    ***
#    Click Link    xpath=(//a[@href="#"])[22]
    Input Text    //input[@name="phone"]    8945625895
    Select From List By Value    //select[@name="country"]    101
    Input Text    //input[@name="zip"]    30329
    Input Text    //input[@name="address"]    mumbai
    Select From List By Value    //select[@name="sex"]    1
    wait until page contains element    //select[@name="state"]
    sleep    5 seconds
    select from list by index    //select[@name="state"]    2
    wait until page contains element    //select[@name="city"]
    sleep    5 seconds
    select from list by index    //select[@name="city"]    2
    Click Element    //input[@name="terms"]
    Click Element    xpath=(//input)[14]
    Close Browser
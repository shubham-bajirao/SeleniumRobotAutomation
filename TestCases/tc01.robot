*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}    Chrome
${Url}    https://google.com

*** Test Cases ***
tc01.start_browser
    Open Browser    ${Url}    ${Browser}
    Go To    https://thetestingworld.com/testings/
    go back
    Close Browser
    Close All Browsers

    


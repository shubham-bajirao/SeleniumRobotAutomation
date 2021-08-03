*** Settings ***
Library    SeleniumLibrary
Resource  ..\\Resources\\Resource1.robot


*** Test Cases ***
tc14
    Start Browser  https://google.com  Chrome
    Keyword to create files  file1  file2
    Close Browser

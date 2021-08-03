*** Settings ***
Library    SeleniumLibrary
Resource  ..\\..\\Resources\\Resource1.robot
#Before and after each test case
Test Setup  Start Browser  https://google.com  Chrome
Test Teardown  Close Browser
#Before and after each test suite
Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite


#Selenium speed
*** Test Cases ***
test case 1
    sleep  5 seconds
test case 2
    sleep  5 seconds
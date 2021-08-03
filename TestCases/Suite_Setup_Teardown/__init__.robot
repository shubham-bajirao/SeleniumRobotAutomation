*** Settings ***
Suite Setup  Before the suite
Suite Teardown   Before the suite


*** Keywords ***
Before the suite
    Log  Test suite started
After the suite
    Log  Test suite ended


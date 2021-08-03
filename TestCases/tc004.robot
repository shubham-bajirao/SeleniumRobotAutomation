*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***


*** Test Cases ***
tc004 List Operations
#Create lisst and get length
    @{List1}   create list    abc xyz    11    kjsdh82
    ${List_length}    get length    ${List1}
    log to console    ${List_length}
    ${List_element}=    get from list    ${List1}    2
    log to console    ${List_element}

#Execute FOR loop
    FOR    ${i}    IN RANGE    1    10
    \    log to console    ${i}
    FOR    ${i}    IN    @{List1}
    \    log to console    ${i}
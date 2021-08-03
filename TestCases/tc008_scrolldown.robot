*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${Url}   https://thetestingworld.com/

#Selenium speed
*** Test Cases ***
tc008.ScrollDown
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    execute javascript  window.scrollTo(0, 1000)
    execute javascript  window.scrollTo(0, 0)
#    open context menu
#    double click element
#    mouse down
#    mouse up
#    mouse over
#    press key  xpath:   \\13                        press enter
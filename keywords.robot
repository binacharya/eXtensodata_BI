*** Settings ***
Library     SeleniumLibrary
Library    DatabaseLibrary
*** Keywords ***
open google browser
    [Arguments]    ${url}   ${browser}
#    open browser    url=https:www.google.com  browser=googlechrome
     open browser   ${url}  ${browser}

input text in search
    input text  xpath=//input[@name="q"]    Bina
press enter
    press keys    xpath=//input[@name="q"]  RETURN


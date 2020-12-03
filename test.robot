*** Settings ***

#Library  SeleniumLibrary

Library  google.py
Resource    keywords.robot
Suite Setup    implemented before when we start test like open prower
#Test setup    runs in each test case

#Suit Teardown  implemented when all test are applied like close browsers    close all browser

*** Variables ***


*** Test Cases ***
opening google and input txt
#    set test message    ${name} Bina
#    open browser    url=https:www.google.com  browser=googlechrome
##    input text  xpath=//input[@name="q"]    Bina
##    press keys    xpath=//input[@name="q"]  RETURN
    google_search_text
#   google search text
##    bina test    I am learning selenium in rf
#    open browser   https:www.google.com    googlechrome
#    input text in search
#    press enter
*** Keywords ***


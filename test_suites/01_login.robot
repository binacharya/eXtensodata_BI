*** Settings ***
Resource  ../pages/Loginpage.robot
Library    ../console_debug.py
#Library         SeleniumLibrary     plugins=SeleniumTestability;True;30 Seconds;True



*** Variables ***

*** Keywords ***

*** Test Cases ***
Login browser should open
    [Documentation]    Open browser to login
   open login browser
    web console log
#   ${console_log}    get log    browser
#    log to console  ${console_log}


verify that the login page should contain header text
    [Documentation]    contain header text as "eXtenso Business Intelligence Solution"
    verify that the login page should contain header text
     web console log


verify that the login page should contain quiries message
    [Documentation]    page contain "If you have any problem please email your issue on the following" message
    verify that the login page should contain quiries message
     web console log


enter valid user name
    [Documentation]    enter valid user name
    enter valid user name


enter invalid password
    [Documentation]  enter invalid password
    enter invalid password


enter in-correct submit

    [Documentation]  enter submit
    enter submit
     web console log


verify error message is displayed
    [Documentation]    conatin error message as " Authentication attempt has failed, likely due to invalid credentials. Please verify and try again."
    verify error message is displayed


enter valid password
    [Documentation]    enter valid password
    enter valid password
#      ${console_log}    get log    browser
#    log to console    ***************************************************
#    log to console  ${console_log}
#    log to console    ***************************************************


enter submit
    [Documentation]    enter submit and login sucessful
    enter submit
     web console log
#amazone
#    open browser    url=http://foo.com     browser=googlechrome
#    log to console    ------of--------FOO-
#     web console log
#    go to   https://www.amazon.com/Amazon-Essentials-Lightweight-Water-Resistant-Packable/dp/B07C8VGWT1/ref=sr_1_1?dchild=1&pf_rd_i=16225018011&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=e9a7a2cd-d373-460c-8c25-702b5e2acb03&pf_rd_r=M1K9NF1VR3K1CPZ2M1HC&pf_rd_s=merchandised-search-4&pf_rd_t=101&qid=1613707098&s=fashion-womens-intl-ship&sr=1-1
#    log to console    -----------of amazone---------------
#    web console log
##     log to console     -----------------------
###   log to console  ${console_log}
##
##   log to console     -----------------------
##    Wait For Testability Ready
##     Get Log   log_type: str=browser
#
##    for entry in driver.get_log('browser'):
##    print(entry)

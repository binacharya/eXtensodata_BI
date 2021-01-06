*** Settings ***
Resource  ../pages/OverviewTerminalAnalyticsPage.robot
#Resource  ../pages/Loginpage.robot

*** Variables ***

*** Keywords ***

*** Test Cases ***
#open login browser
#
#   open login browser
#
#
#verify that the login page should contain header text
#    verify that the login page should contain header text
#
#
#verify that the login page should contain quiries message
#    verify that the login page should contain quiries message
#
#
#enter valid user name
#    enter valid user name
#
#
#enter invalid password
#    enter invalid password
#
#
#enter in-correct submit
#    enter submit
#
#
#verify error message is displayed
#    verify error message is displayed
#
#
#enter valid password
#    enter valid password
#
#
#enter submit
#    enter submit

naigate to desired location
    go to    https://10.13.189.19:8443/bi/switch/overview/terminal-analytics/error-monitor

click filter date option
    click filter date option

    sleep   2 sec
click montly option in date filter
    click montly option in date filter

click last 12 months option in montly filter
        click last 12 months option in montly filter

click apply
    click apply

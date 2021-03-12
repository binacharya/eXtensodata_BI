*** Settings ***
Resource  ../pages/OverviewTerminalAnalyticsPage.robot
Resource  ../pages/Loginpage.robot

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


click element custom_xpath
     click filter date option
    click element custom_xpath

year filter
    Year filter calendra year selection change untill year is found    2017


year filter date
    year filter      2017   Jan   12



click to date column

    click to date column


click element custom_xpath for to date

    click element custom_xpath to date

#year filter
#       2019


Year filter calendra year selection change untill year is found next
   Year filter calendra year selection change untill year is found next    2019

year filter date to date
   year filter to      2019  Jan   12


click apply
    click apply







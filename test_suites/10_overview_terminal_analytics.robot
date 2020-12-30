*** Settings ***
Resource  ../pages/OverviewTerminalAnalyticsPage.robot
*** Variables ***

*** Keywords ***

*** Test Cases ***
naigate to desired location
    go to    https://10.13.189.19:8443/bi/switch/overview/terminal-analytics/error-monitor

click filter date option
    click filter date option


#verify that switch nav bar is selected for terminal analytics over view
#    verify that switch nav bar is selected


#verify that switch nav bar is selected for overview
#        verify that switch nav bar is selected for overview

click montly option in date filter
    click montly option in date filter

click last 12 months option in montly filter
        click last 12 months option in montly filter

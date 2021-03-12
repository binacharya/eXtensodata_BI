*** Settings ***
Resource  ../pages/DashBoardTerminalAnalyticsPage.robot



*** Variables ***

*** Keywords ***

*** Test Cases ***

#select one tiles in the dashboard
#    select one tiles

verify that terminal analytics page is present
    go to    https://10.13.189.19:8443/bi/switch/dashboard/21
     sleep   5 sec
verify that all tles are selected by clicking ctrl+a for terminal analytics

    verify that all tles are selected by clicking ctrl+a


verfiy that the date level of tiles are changed to monthly for terminal analytics
    verfiy that the date level of tiles are changed to monthly


verfiy that the date level of tiles are changed to daily for terminal analytics
    verfiy that the date level of tiles are changed to daily
verify that the date level for all tiles is daily
    verify that the date level for all tiles is daily


verfiy that the date level of tiles are changed to monthly for terminal analytics
    verfiy that the date level of tiles are changed to monthly

verify that the date level for all tiles is monthly
    verify that the date level for all tiles is monthly



the date level of tiles are changed to yearly for terminal analytics
    verfiy that the date level of tiles are changed to yearly

verify that the date level for all tiles is yearly
    verify that the date level for all tiles is yearly


one tile is clicked and date level is changed to daily for terminal analytics
        verify that one tile is clicked and date level is changed to daily


date level is changed to monthly of one tile for terminal analytics
        verify that the date level is changed to monthly of one tile


date level is changed to yearly of one tile for terminal analytics
    verify that the date level is changed to yearly of one tile


one tile is clicked and date level is changed to daily_ for terminal analytics
        verify that one tile is clicked and date level is changed to daily


menu for single tile is selected for terminal analytics
        verify that the menu for single tile is selected


focus item is selected for single tile for terminal analytics
    verift that focus item is selected for single tile


verify that cancel focus is selected for terminal analytics
    verify that cancel focus is selected


verify that the total number tiles present in terminal analytics is correct for terminal analytics
    verify that the total number tiles present in terminal analytics is correct


verify that the terminal analytics should contain terminal analytics text for terminal analytics
   verify that the terminal analytics should contain terminal analytics text
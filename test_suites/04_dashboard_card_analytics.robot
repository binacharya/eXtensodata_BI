*** Settings ***
Resource  ../pages/DashBoardCardAnalyticsPage.robot



*** Variables ***

*** Keywords ***

*** Test Cases ***

#select one tiles in the dashboard
#    select one tiles
verify that card analytics page is availabe
        go to   https://10.13.189.19:8443/bi/switch/dashboard/22
all tles are selected by clicking ctrl+a for card analyics
    sleep   5 sec
   verify that all tles are selected by clicking ctrl+a


date level of tiles are changed to monthly of card analyics
    verfiy that the date level of tiles are changed to monthly


verfiy that the date level of tiles are changed to daily for card analytics
    verfiy that the date level of tiles are changed to daily


verfiy that the date level of tiles are changed to monthly_ for card analytics
    verfiy that the date level of tiles are changed to monthly


verfiy that the date level of tiles are changed to yearly for card analytics
    verfiy that the date level of tiles are changed to yearly


verify that one tile is clicked and date level is changed to daily for card analytics
    verify that one tile is clicked and date level is changed to daily


verify that the date level is changed to monthly of one tile for card analytics
    verify that the date level is changed to monthly of one tile


verify that the date level is changed to yearly of one tile for card analytics
    verify that the date level is changed to yearly of one tile


verify that one tile is clicked and date level is changed to daily_ for card analytics
    verify that one tile is clicked and date level is changed to daily


verify that the menu for single tile is selected for card analytics
        verify that the menu for single tile is selected


verift that focus item is selected for single tile for card analytics
    verift that focus item is selected for single tile


verify that cancel focus is selected for card analytics
        verify that cancel focus is selected


verify that the total number tiles present in card analytics is correct for card analytics
        verify that the total number tiles present in card analytics is correct


verify that the card analytics should contain card analytics text for card analytics
    verify that the card analytics should contain card analytics text


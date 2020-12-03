*** Settings ***
Resource  ../pages/DashBoardCardAnalyticsPage.robot



*** Variables ***

*** Keywords ***

*** Test Cases ***

#select one tiles in the dashboard
#    select one tiles
Select all tiles in the list
    sleep   5 sec
    select all tilse
change date level multiple tiles
    change date level for all tiles monthly
    change date level for all tiles daily
    change date level for all tiles monthly
    change date level for all tiles yearly
change date level single tile
    one tile daily
    one tile monthly
    one tile Yearly
    one tile daily
focus tile
    click menu
click focus
    click focus
cancel focus
    cancel focus
count tile
    count tile
vaidate
    vaidate


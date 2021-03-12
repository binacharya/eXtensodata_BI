*** Settings ***
Resource  ../pages/NavBarSelection.robot



*** Variables ***

*** Keywords ***

*** Test Cases ***

 menu is clicked for card analytics
    [Documentation]    menu is clicked in-order to freeze side nav bar
    verify that menu is clicked

switch nav bar is selected for card analytics
    [Documentation]   switch is clicked in side nav bar

    verify that switch nav bar is selected


dashboard under switch is selected for card analytics
    [Documentation]    dashboard is click under switch in side nav bar
    verify that dashboard under switch is selected


card analytics under swith->Dashboard is selected
    [Documentation]    card analytics is clicked
    verift that card analytics under swith->Dashboard is selected



*** Settings ***
Resource  ../pages/NavigationPage.robot


*** Variables ***

*** Keywords ***

*** Test Cases ***

module selection is clicked
    [Documentation]   click menu for module selection
    sleep   5 sec
    module selection is clicked


switch module is selected
    [Documentation]    Switch module is selected
    verify that switch module is selected
    sleep   5 sec

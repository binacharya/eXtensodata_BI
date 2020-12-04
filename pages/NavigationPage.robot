*** Settings ***
Library    String
Library     SeleniumLibrary
*** Variables ***
${module_navigation}     //app-nav-modules
${switch}       //*[@id="mat-menu-panel-1"]/div/div/div/div/a[1]


*** Keywords ***
verify that module selection is clicked


   wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${module_navigation}
   click element    xpath=${module_navigation}
   sleep    5 sec

verify that switch module is selected
   wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${switch}
   click element    xpath=${switch}


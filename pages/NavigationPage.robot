*** Settings ***
Library    String
Library     SeleniumLibrary
*** Variables ***
${navigate}     //app-nav-modules
${switch}       //*[@id="mat-menu-panel-1"]/div/div/div/div/a[1]


*** Keywords ***
module navigation


   wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${navigate}
   click element    xpath=${navigate}
   sleep    5 sec


navigate to switch

   wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${switch}
   click element    xpath=${switch}


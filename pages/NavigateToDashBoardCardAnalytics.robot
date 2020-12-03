*** Settings ***
Library    String
Library     SeleniumLibrary
*** Variables ***
${menu}         //span[@class='cursor-pointer mr-15 ic-menu']
${switch}       //span[@class='ng-star-inserted' and contains(text(), 'Switch')]
${dashboard}    //mat-tree[@class='mat-tree']/mat-tree-node[3]
${card_analytics}   //span[@class='sidebar-node ng-star-inserted' and contains(text(), 'Card Analytics')]
${terminal_analytics}   //span[@class='sidebar-node ng-star-inserted' and contains(text(), 'Terminal Analytics')]

*** Keywords ***
menu selection
#    go to   https://10.13.189.19:8443/bi/switch/dashboard/21
     wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${menu}
    click element    xpath=${menu}
switch selection
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${switch}

    click element    xpath=${switch}
    click element   xpath=${switch}
dashboard selection
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${dashboard}
    click element    xpath=${dashboard}
card analytics selection
     wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${card_analytics}
    click element    xpath=${card_analytics}
terminal analytics selection
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${terminal_analytics}
    click element    xpath=${terminal_analytics}


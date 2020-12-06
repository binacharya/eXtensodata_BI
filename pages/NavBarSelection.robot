*** Settings ***
Library    String
Library     SeleniumLibrary
*** Variables ***
${menu}         //span[@class='cursor-pointer mr-15 ic-menu']
${switch}       //span[@class='ng-star-inserted' and contains(text(), 'Switch')]
${dashboard}    //mat-tree[@class='mat-tree']/mat-tree-node[3]
${overview}     //mat-tree[@class='mat-tree']/mat-tree-node[4]
${terminal_analytics_overview}      //span[@class='sidebar-node ng-star-inserted' and contains(text(), 'Terminal  Analytics')]
${card_analytics}   //span[@class='sidebar-node ng-star-inserted' and contains(text(), 'Card Analytics')]
${terminal_analytics}   //span[@class='sidebar-node ng-star-inserted' and contains(text(), 'Terminal  Analytics')]
${edit_dashboard}       //mat-tree-node[1]/span
${arjun_dash_board}     //span[contains(text(),'Arjun')]

*** Keywords ***
verify that menu is clicked
#    go to   https://10.13.189.19:8443/bi/switch/dashboard/21
     wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${menu}
    click element    xpath=${menu}
verify that switch nav bar is selected
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${switch}
    click element    xpath=${switch}
    click element   xpath=${switch}
verify that dashboard under switch is selected
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${dashboard}
    click element    xpath=${dashboard}
verift that card analytics under swith->Dashboard is selected
     wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${card_analytics}
    click element    xpath=${card_analytics}
verift that terminal analytics under swith->Dashboard is selected
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${terminal_analytics}
    click element    xpath=${terminal_analytics}
verify that editiable dashboard is selected
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${edit_dashboard}
    click element    xpath=${edit_dashboard}
verify that arjun dash board is selected
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${arjun_dash_board}
    click element    xpath=${arjun_dash_board}
verify that Report Categories is clicked
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${overview}
    click element    xpath=${overview}
verify that switch nav bar is selected for overview
    scroll element into view    xpath=${switch}
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${switch}
    click element    xpath=${switch}

verify that terminal analytics of overview sub category is clicked
     wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${terminal_analytics_overview}
     click element    xpath=${terminal_analytics_overview}









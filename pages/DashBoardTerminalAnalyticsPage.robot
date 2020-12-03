*** Settings ***
Library     SeleniumLibrary
Library    String
Library     SeleniumLibrary
*** Variables ***
${click_tile}       layout_21_164
${date_level}       //app-enum-filter[@filtername='Date Level']//span[@class='ic-chevron-down']
${daily}        //span[contains(text(),'Daily')]
${monthly}      //span[contains(text(),'Monthly')]
${yearly}       //span[contains(text(),'Yearly')]
${menu}         //div[@id='layout_21_164']//span[@mattooltip='Menu']
${focus}        //div[@class='mat-menu-content']/a[2]
${cancel_focus}     //span[@class='ic-x res-font-x cursor-pointer ng-star-inserted']
${conatin}      Terminal Analytics

*** Keywords ***
select one tiles
      wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    id=${click_tile}
      mouse over    id=${click_tile}
      sleep     5 sec
      click element   id=${click_tile}
select all tilse
       press keys    None      CTRL+a
change date level for all tiles daily
       wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${date_level}
       click element    xpath=${date_level}
       sleep       5 sec
       click element    xpath=${daily}
       sleep       5  sec
change date level for all tiles monthly
       wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${date_level}
       click element    xpath=${date_level}
       sleep      5 sec
       click element    xpath=${monthly}
       sleep       5  sec
change date level for all tiles yearly
       wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${date_level}
       click element    xpath=${date_level}
       sleep       5 sec
       click element    xpath=${yearly}
       sleep       5  sec
one tile daily
     click element   id=${click_tile}
     click element    xpath=${date_level}
     sleep       5 sec
     click element    xpath=${daily}
one tile monthly
    click element    xpath=${date_level}
   click element    xpath=${monthly}
one tile Yearly
      click element    xpath=${date_level}
      click element    xpath=${yearly}
click menu
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${menu}
    click element    xpath=${menu}
click focus
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${focus}
    click element    xpath=${focus}
    sleep    5 sec
cancel focus
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${cancel_focus}
    click element    xpath=${cancel_focus}
count tile
    ${Count}     Get Element Count      xpath=//div[@class='e-panel e-panel-transition']
    log to console    ${Count}
    should be equal as integers    ${count}     14
validate
    page should contain    ${conatin}



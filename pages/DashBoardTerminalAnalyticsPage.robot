*** Settings ***
Library     SeleniumLibrary
Library    String


*** Variables ***
${click_tile}                      layout_21_164
${select_date_level_xpath}       //app-enum-filter[@filtername='Date Level']//span[@class='ic-chevron-down']
${daily_xpath}                   //span[contains(text(),'Daily')]
${monthly}                      //span[contains(text(),'Monthly')]
${yearly}                       //span[contains(text(),'Yearly')]
${menu}                         //div[@id='layout_21_164']//span[@mattooltip='Menu']
${focus}                        //div[@class='mat-menu-content']/a[2]
${cancel_focus}                 //span[@class='ic-x res-font-x cursor-pointer ng-star-inserted']
${contain_text}                 Terminal Analytics

*** Keywords ***
vetify that one tile is selected
      wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    id=${click_tile}
      mouse over    id=${click_tile}
      sleep     5 sec
      click element   id=${click_tile}


verify that all tles are selected by clicking ctrl+a
       press keys    None      CTRL+a


verfiy that the date level of tiles are changed to daily
       wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${select_date_level_xpath}
       click element    xpath=${select_date_level_xpath}
       sleep       5 sec
       click element    xpath=${daily_xpath}
       sleep       5  sec


verfiy that the date level of tiles are changed to monthly
       wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${select_date_level_xpath}
       click element    xpath=${select_date_level_xpath}
       sleep      5 sec
       click element    xpath=${monthly}
       sleep       5  sec


verfiy that the date level of tiles are changed to yearly
       wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${select_date_level_xpath}
       click element    xpath=${select_date_level_xpath}
       sleep       5 sec
       click element    xpath=${yearly}
       sleep       5  sec


verify that one tile is clicked and date level is changed to daily
     click element   id=${click_tile}
     click element    xpath=${select_date_level_xpath}
     sleep       5 sec
     click element    xpath=${daily_xpath}


verify that the date level is changed to monthly of one tile
    click element    xpath=${select_date_level_xpath}
    click element    xpath=${monthly}


verify that the date level is changed to yearly of one tile
      click element    xpath=${select_date_level_xpath}
      click element    xpath=${yearly}


verify that the menu for single tile is selected
     wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${menu}
     click element    xpath=${menu}


verift that focus item is selected for single tile
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${focus}
    click element    xpath=${focus}
    sleep    5 sec


verify that cancel focus is selected
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${cancel_focus}
    click element    xpath=${cancel_focus}


verify that the total number tiles present in terminal analytics is correct
    ${Count}     Get Element Count      xpath=//div[@class='e-panel e-panel-transition']
    log to console    ${Count}
    should be equal as integers    ${count}     14


verify that the terminal analytics should contain terminal analytics text
    page should contain    ${contain_text}



*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${click_tile}                                 layout_22_197
${date_level}                                //app-enum-filter[@filtername='Date Level']//span[@class='ic-chevron-down']
${daily}                                    //span[contains(text(),'Daily')]
${monthly}                                  //span[contains(text(),'Monthly')]
${yearly}                                   //span[contains(text(),'Yearly')]
${menu_selection_for_single_tile}           //div[@id='layout_22_193_content']//span[@mattooltip='Menu']
${focus_tile}                              //div[@class='mat-menu-content']/a[2]
${cancel_focus_tile}                       //span[@class='ic-x res-font-x cursor-pointer ng-star-inserted']
${contain_header_text}                     Card Analytics

*** Keywords ***
vetify that one tile is selected

      wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    id=${click_tile}
      mouse over    id=${click_tile}
      sleep     5 sec
      click element   id=${click_tile}


verify that all tles are selected by clicking ctrl+a
      press keys    None      CTRL+a


verfiy that the date level of tiles are changed to daily
       wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${date_level}
       click element    xpath=${date_level}
       sleep       5 sec
       click element    xpath=${daily}
       sleep       5  sec



verfiy that the date level of tiles are changed to monthly
       wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${date_level}
       click element    xpath=${date_level}
       sleep      5 sec
       click element    xpath=${monthly}
       sleep       5  sec
       ${quarterly_value}=  get text    xpath=//div[@fxlayoutalign='center center']
       log to console    ${quarterly_value}

verfiy that the date level of tiles are changed to yearly
       wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${date_level}
       click element    xpath=${date_level}
       sleep       5 sec
       click element    xpath=${yearly}
       sleep       5  sec


verify that one tile is clicked and date level is changed to daily
       click element   id=${click_tile}
       click element    xpath=${date_level}
       sleep       5 sec
       click element    xpath=${daily}


verify that the date level is changed to monthly of one tile
       click element    xpath=${date_level}
       click element    xpath=${monthly}


verify that the date level is changed to yearly of one tile
       click element    xpath=${date_level}
       click element    xpath=${yearly}


verify that the menu for single tile is selected
        wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${menu_selection_for_single_tile}
        click element    xpath=${menu_selection_for_single_tile}


verift that focus item is selected for single tile
        wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${focus_tile}
        click element    xpath=${focus_tile}
        sleep    5 sec


verify that cancel focus is selected
        wait until keyword succeeds    1 min    1 sec      Element Should Be Visible   xpath=${cancel_focus_tile}
        click element    xpath=${cancel_focus_tile}


verify that the total number tiles present in card analytics is correct
    ${Count}     Get Element Count      xpath=//div[@class='e-panel e-panel-transition']
    log to console    ${Count}


verify that the card analytics should contain card analytics text
    page should contain     ${contain_header_text}

verify that the date level for all tiles is daily
    ${daily_text}=  get text    xpath=//div[@fxlayoutalign='center center']
    should be equal as strings      ${daily_text}       D       msg=should be 'D' but got ${daily_text}

verify that the date level for all tiles is monthly
    ${monthly_text}=  get text    xpath=//div[@fxlayoutalign='center center']
    should be equal as strings      ${monthly_text}       M     msg=should be 'M' but got ${monthly_text}
verify that the date level for all tiles is yearly

    ${yearly_text}=  get text    xpath=//div[@fxlayoutalign='center center']
    should be equal as strings      ${yearly_text}       Y      msg=should be 'Y' but got ${yearly_text}












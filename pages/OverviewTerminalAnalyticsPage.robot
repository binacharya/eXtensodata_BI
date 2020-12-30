*** Settings ***
Library    String
Library     SeleniumLibrary
*** Variables ***
${filter_date_xpath}        //span[contains(text(),'Filter Date')]
${monthly_xpath}            //div[contains(text(),' Monthly ')]
${last_12_months_xpath}    //span[contains(text(),' Last 12 Months ')]


*** Keywords ***
click filter date option
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${filter_date_xpath}
    click element       xpath=${filter_date_xpath}

click montly option in date filter

    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${monthly_xpath}
   double click element          xpath=${monthly_xpath}

click last 12 months option in montly filter
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${last_12_months_xpath}
    click element       xpath=${last_12_months_xpath}

click apply
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=//button[@class='bi-btn bi-btn-primary']
    click element    xpath=//button[@class='bi-btn bi-btn-primary']

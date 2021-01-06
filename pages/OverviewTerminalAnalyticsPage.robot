*** Settings ***
Library     String
Library     SeleniumLibrary
*** Variables ***
${filter_date_xpath}        //span[contains(text(),'Filter Date')]
${monthly_xpath}            //div[contains(text(),' Monthly ')]
${custom_xpath}            //div[contains(text(),' Custom ')]
${last_12_months_xpath}    //span[contains(text(),' Last 12 Months ')]
${change_year_date_xaptah}  //div[@class='e-day e-title']
${up_arrow_xpath}       //span[@class='e-date-icon-prev e-icons']



*** Keywords ***
click filter date option
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${filter_date_xpath}
    click element       xpath=${filter_date_xpath}

click montly option in date filter

    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${monthly_xpath}
    click element          xpath=${monthly_xpath}

click last 12 months option in montly filter
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${last_12_months_xpath}
    click element       xpath=${last_12_months_xpath}


click element custom_xpath
     click element          xpath=${custom_xpath}
     wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${change_year_date_xaptah}
     click element      xpath=${change_year_date_xaptah}
     click element    xpath=${change_year_date_xaptah}
     click element    xpath=${up_arrow_xpath}
year filter
    [Arguments]    ${year}      ${months}       ${day}
#    wait until element is visible       1 min    1 sec      Element Should Be Visible     xpath=//span[contains(text(),'${year}')]
    click element    xpath=//span[contains(text(),'${year}')]
    click element    xpath=//span[contains(text(),'${months}')]
    click element    xpath=//span[contains(text(),'${day}')]
    [Return]    ${year}



click apply
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=//button[@class='bi-btn bi-btn-primary']
    click element    xpath=//button[@class='bi-btn bi-btn-primary']







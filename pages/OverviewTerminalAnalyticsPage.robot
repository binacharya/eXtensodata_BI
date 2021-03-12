*** Settings ***
Library     String
Library     SeleniumLibrary
Library    Dialogs
Library    Collections
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
     click element    xpath=${change_year_date_xaptah}
     click element    xpath=${change_year_date_xaptah}

click element custom_xpath to date
      wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=${change_year_date_xaptah}
     click element    xpath=${change_year_date_xaptah}
     click element    xpath=${change_year_date_xaptah}

##     click element    xpath=${up_arrow_xpath}
year filter
    [Arguments]        ${Year}   ${months}       ${day}
    wait until keyword succeeds           1 min    1 sec      Element Should Be Visible     xpath=//span[contains(text(),"2017")]
    click element    xpath=//*[@role="gridcell"]/span[@class="e-day" and contains(text(),'${Year}') ]
    click element    xpath=//span[contains(text(),'${months}')]
    click element    xpath=//span[contains(text(),'${day}')]
    [Return]       ${Year}      ${months}       ${day}



click apply
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=//button[@class='bi-btn bi-btn-primary']
    click element    xpath=//button[@class='bi-btn bi-btn-primary']


Year filter calendra year selection change untill year is found
   [Arguments]    ${year}
    FOR    ${index}    IN RANGE    0    10
        ${year_exist_status}=    year filter selection    ${year}
        exit for loop if    "${year_exist_status}"=="True"
       click element    xpath=//span[@class='e-date-icon-prev e-icons']
       log to console    ====year claendra up clicked ${index} time====

    END

year filter selection
    [Arguments]    ${year}
#    year filter     2011        Jan         9

    @{year_list}=    get webelements    //*[@role="gridcell"]/span[@class="e-day"]
    @{year_value_in_calendra_list}=    create list    #variable created for storing list of year in UI screen
    ${length_of_year_value_in_calendra_list} =    get length  ${year_list}    #for loop need to get length
    ${length_of_year_value_in_calendra_list}=    evaluate    ${length_of_year_value_in_calendra_list} - 1    #there is always 1 number of year more

    FOR   ${index}      IN RANGE  1    ${length_of_year_value_in_calendra_list}
        ${text}=    get text    ${year_list[${index}]}
#                log to console    ${year_web}========== ${text}=========
        append to list    ${year_value_in_calendra_list}    ${text}
    END
    log to console    ==year_value_in_calendra_list=== ${year_value_in_calendra_list}==

   ${year_exist_status}=     run keyword and return status    list should contain value     ${year_value_in_calendra_list}    ${year}
   log to console    *****************year_exist_status*****${year_exist_status}*******************
   [Return]    ${year_exist_status}

click to date column
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=//app-date-filter-dialog-wrapper/app-date-filter-core/div/div[2]/div/div[2]/app-bi-mat-input/mat-form-field/div/div[1]
    click element   xpath=//app-date-filter-dialog-wrapper/app-date-filter-core/div/div[2]/div/div[2]/app-bi-mat-input/mat-form-field/div/div[1]


Year filter calendra year selection change untill year is found next

   [Arguments]    ${year}
    FOR    ${index}    IN RANGE    0    10
        ${year_exist_status}=    year filter selection    ${year}
        exit for loop if    "${year_exist_status}"=="True"
         wait until keyword succeeds    1 min    1 sec      Element Should Be Visible     xpath=//span[@class='e-date-icon-prev e-icons']
          sleep   2 sec
       click element    xpath=//span[@class='e-date-icon-prev e-icons']
        sleep   2 sec
       log to console    ====year claendra up clicked ${index} time====

    END


year filter to
    [Arguments]        ${Year}   ${months}       ${day}
    sleep   2 sec
    wait until keyword succeeds           1 min    1 sec      Element Should Be Visible     xpath=//span[contains(text(),"2019")]
    click element    xpath=//*[@role="gridcell"]/span[@class="e-day" and contains(text(),'${Year}') ]
     sleep   2 sec
    click element    xpath=//span[contains(text(),'${months}')]
     sleep   2 sec
    click element    xpath=//span[contains(text(),'${day}')]
    [Return]       ${Year}      ${months}       ${day}









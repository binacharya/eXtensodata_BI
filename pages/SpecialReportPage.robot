*** Settings ***
Library     SeleniumLibrary
Library    String
Library  DatabaseLibrary
*** Variables ***


*** Keywords ***
navigate to special report
    go to   https://10.13.189.19:8443/bi/switch/report-category/1
select report
    [Arguments]    ${report_type}
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=//span[@class='cursor-pointer']
    click element    xpath=//span[@class='cursor-pointer']
    click element    xpath=//span[contains(text(),'Add Filter')]
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=(//div[@class='mat-form-field-infix'])[4]
    #//*[@id="mat-dialog-0"]/app-table-filter-dialog/div/form/div[1]/div[2]/div/div/div/div/div/app-bi-mat-select-search/mat-form-field/div/div[1]/div
    click element           xpath=(//div[@class='mat-form-field-infix'])[4]
    #//*[@id="mat-dialog-0"]/app-table-filter-dialog/div/form/div[1]/div[2]/div/div/div/div/div/app-bi-mat-select-search/mat-form-field/div/div[1]/div
    click element       xpath=//span[@class='mat-option-text']//span[contains(text(),'${report_type}')]

click apply
    click element    xpath=//span[contains(text(),'Apply')]
#click cancel
#    click element    xpath=//span[@class="ic-x bi-btn-icon color-primary table-dialog-close"]

click preview
    sleep   2 sec
     wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=//span[contains(text(),'Preview')]

    click element    xpath=//span[contains(text(),'Preview')]
close preview
    sleep   2 sec
     wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=//span[@class='ic-x bi-btn-icon color-primary table-dialog-close']
    click element    xpath=//span[@class='ic-x bi-btn-icon color-primary table-dialog-close']
database connection
    Connect To Database    pymysql   MASTER_DATA   application    Application@123         10.13.189.55    3306

get count value
    ${value}    query      select count(1) from extenso_bi_report.card_inactivity;
          log to console    ${value}

view cardinactivity
#    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    css=td.bi-table-cell-hyperlink>span
    #click element       xpath=//table/tbody/tr/td[2]
    sleep    2sec
    click element       css=td.bi-table-cell-hyperlink>span

click on column
    [Arguments]    ${column}
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=//span[contains(text(),' ${column} ')]
    click element    xpath=//span[contains(text(),' ${column} ')]
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=//span[@class='normal-text']

column validation
    [Arguments]         ${value}

    get text    xpath=(//th[starts-with(@class,'mat-header-cell')]//button//span)[${value}]
count number of columns

   ${counts}     Get Element Count       xpath=(//th[starts-with(@class,'mat-header-cell')]//button//span)
    should be equal as integers        ${counts}      13






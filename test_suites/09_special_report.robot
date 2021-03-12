*** Settings ***
Resource  ../pages/SpecialReportPage.robot
Resource  ../pages/Loginpage.robot

*** Variables ***
${split_record1}
${value}
*** Keywords ***

*** Test Cases ***
navigate to special report
    navigate to special report

select card incativity report type
    select report        Card Inactivity

click apply
    click apply

click preview
    click preview

close preview
    close preview

view cardinactivity
    view cardinactivity

record count
       wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=//div[@class='mat-paginator-range-label']
        ${no_of_record}     get text   xpath=//div[@class='mat-paginator-range-label']
        ${split_record}   split string    ${no_of_record}
        ${split_record1}     get substring       ${split_record}        -1
#        ${no_of_records}    convert to number    ${split_record1}
        log to console    ${split_record1}
#
validate that card in activity page is navigated
    page should contain     Card Inactivity

click on column
    click on column     Account Number
    ${value}    get text    xpath=//span[@class='normal-text']
    should be equal as strings      ${value}        Account Number


click on columns
    click on column     Phone Number
    ${value}    get text    xpath=//span[@class='normal-text']
    should be equal as strings      ${value}        Phone Number

column validation
    ${run_date}     column validation    1
    should not be equal as strings      ${run_date}      Run Date
     ${account_number}     column validation    2
     should not be equal as strings      ${account_number}       Account Number

count number of columns

    count number of columns

close browser
    close browser





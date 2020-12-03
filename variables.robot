*** Settings ***

#Library  SeleniumLibrary


Library  google.py
Resource    keywords.robot
Suite Setup    implemented before when we start test like open prower
#Test setup    runs in each test case

#Suit Teardown  implemented when all test are applied like close browsers    close all browser

*** Variables ***
#Scalar
${name} bina
#list/arrya
@{name}     bina    anil    asha
#dictionamry variabal
${name_dict}


*** Test Cases ***
variable learning test case 1

    set variable
    set suite variable
     ${list_var} =  create list        bina asha anil
    @{dist_var}=    create dictionary    name=bina      country=npl
    rep
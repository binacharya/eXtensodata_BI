*** Settings ***
Resource  ../pages/Loginpage.robot


*** Variables ***

*** Keywords ***

*** Test Cases ***
Login browser should open
   open login browser
verify that the login page should contain header text
    verify that the login page should contain header text
verify that the login page should contain quiries message
    verify that the login page should contain quiries message
enter valid user name
    enter valid user name
enter invalid password
    enter invalid password
enter in-correct submit
    enter submit
verify error message is displayed
    verify error message is displayed
enter valid password
    enter valid password
enter submit
    enter submit
*** Settings ***
Resource  ../pages/EditDasbordPage.robot
*** Variables ***

*** Keywords ***

*** Test Cases ***
verify that edit dash board page is present
      go to   https://10.13.189.19:8443/bi/dashboard/2
      sleep     5 sec
verify that all tiles are selected by clicking CTRL+a
        select all tiles by clicking CTRL+a
verify that edit button is clicked
    verify that edit button is clicked


verify that delete tile button is clicked
   verify that delete tile button is clicked

verify that add tile button is clicked
   verify that add tile button is clicked

verify that confirm dialouge is displayed and yes button is clicked to save tile
        verify that confirm dialouge is displayed and yes button is clicked to save tile
add deposit tiles
    add deposit tiles
   # sleep   5 sec
    #add deposit tiles

verify that edit button is clicked
        verify that edit button is clicked


verify that add tiles button is clickable
    verify that add tiles button is clickable


verify that cancel button is clickable
    verify that cancel button is clickable

verify that tiles are saved
     verify that tiles are saved

verify that confirm dialouge is displayed and yes button is clicked
    verify that confirm dialouge is displayed and yes button is clicked
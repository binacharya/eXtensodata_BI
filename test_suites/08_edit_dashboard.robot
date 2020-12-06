*** Settings ***
Resource  ../pages/EditDasbordPage.robot
*** Variables ***

*** Keywords ***

*** Test Cases ***
verify that all tiles are selected by clicking CTRL+a
        select all tiles by clicking CTRL+a
verify that edit button is clicked
        verify that edit button is clicked
verify that delete tile button is clicked
   verify that delete tile button is clicked
verify that confirm dialouge is displayed and yes button is clicked
    verify that confirm dialouge is displayed and yes button is clicked

verify that add tile button is clicked
   verify that add tile button is clicked

#add deposit tiles
#    add deposit tiles
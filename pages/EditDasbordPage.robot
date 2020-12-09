*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${edit_button}                                      //span[@class='ic-edit']
${delete_button}                                    //span[@class='ic-trash']
${confirm_yes_button}                               //span[contains(text(),'Yes')]
${add_tile_button}                                  //div[@class='dashboard-toolbar-align']//span[@class='ic-plus']
${customer_analytics_checkbox_xpath}                 //mat-tree/mat-tree-node[1]//span[@class='mat-checkbox-label']
${add_tile_button_xpath}                            //button[@class='bi-btn bi-btn-primary']
${cancel_button_xpath}                             //button[@class='bi-btn bi-btn-secondary']
${save_button}                                     //span[@class='ic-save']

*** Keywords ***

select all tiles by clicking CTRL+a
       press keys    None      CTRL+a


verify that edit button is clicked
        wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=${edit_button}
        mouse over      xpath=${edit_button}
        click element    xpath=${edit_button}


verify that delete tile button is clicked
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=${delete_button}
    mouse over    xpath=${delete_button}
    click element    xpath=${delete_button}


verify that confirm dialouge is displayed and yes button is clicked
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=${confirm_yes_button}
    click element   xpath=${confirm_yes_button}


verify that add tile button is clicked
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=${add_tile_button}
    mouse over    xpath=${add_tile_button}
    click element    xpath=${add_tile_button}


add deposit tiles
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=${customer_analytics_checkbox_xpath}
    click element    xpath=${customer_analytics_checkbox_xpath}

verify that add tiles button is clickable
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=${add_tile_button_xpath}
    click element    xpath=${add_tile_button_xpath}

verify that cancel button is clickable
       wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=${cancel_button_xpath}
        click element    xpath=${cancel_button_xpath}
        sleep   5 sec

verify that tiles are saved
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=${save_button}
    mouse over      xpath=${save_button}
    click element    xpath=${save_button}

verify that confirm dialouge is displayed and yes button is clicked to save tile
    wait until keyword succeeds    1 min    1 sec      Element Should Be Visible    xpath=${confirm_yes_button}
    click element   xpath=${confirm_yes_button}









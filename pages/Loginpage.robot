*** Settings ***
Library     SeleniumLibrary


Library    String
Library     SeleniumLibrary
*** Variables ***
${user_name}    admin
${password}     admin123
${base_url}     http://10.13.189.56
${invalid_pass}     admin12
${user_name_id}     username
${pass_word_id}     password
${login}        //*[@id=\"fm1\"]/input[4]
${text}          eXtenso Business Intelligence Solution
${queries}      If you have any problem please email your issue on the following
${username}     Username
${PassWord}     Password




*** Keywords ***



open login browser
    open browser   url=https://10.13.189.19:8443/cas/login?service=https%3A%2F%2F10.13.189.19%3A8443%2Fbi%2Flogin%2Fcas    browser=googlechrome
    MAXIMIZE BROWSER WINDOW
validate
    page should contain      ${text}
    page should contain     ${queries}
enter user name

     input text    id=${USER_NAME_ID}   ${user_name}

invalid login

    input password    id=${pass_word_id}    ${invalid_pass}
message
    page should contain    Authentication attempt has failed, likely due to invalid credentials. Please verify and try again.
enter password
     input password      id=${pass_word_id}   ${password}
enter submit
     click element    xpath=${login}



*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Valid Log in
    Scroll Element Into View    //*[@id="auth-connect-id"]
    Click Element    id=auth-connect-id
    Scroll Element Into View  //*[@id="login-id"]
    Click Button  //*[@id="login-id"]
    Wait Until Page Contains  Se connecter    10s
    Scroll Element Into View   //*[@id="loginModel_Email"]
    Click Element  //*[@id="loginModel_Email"]
    Input Text    //*[@id="loginModel_Email"]    zinzin52@gmail.com
    Scroll Element Into View  //*[@id="loginModel_Password"]
    Click Element  //*[@id="loginModel_Password"]
    Input Password    //*[@id="loginModel_Password"]   truc237
    Click Button    //*[@id="login-form"]/form/div[4]/button



Invalid Password Log In
    Scroll Element Into View    //*[@id="auth-connect-id"]
    Click Element    //*[@id="auth-connect-id"]
    Scroll Element Into View  //*[@id="login-id"]
    Click Button  //*[@id="login-id"]
    Wait Until Page Contains  Se connecter    10s
    Input Text    id:email    zinzin52@gmail.com
    Input Password     //*[@id="loginModel_Email"]   wrongpassword
    Click Button    //*[@id="login-form"]/form/div[4]/button
    Wait Until Element Is Visible    //*[@id="login-form"]/form/div[4]/div[1]/ul/li
    #Element Should Contain    css:.error-message    incorrect
    
Invalid Email Login In
    Scroll Element Into View  id=auth-connect-id
    Click Element    id=auth-connect-id
    Click Button  id=login-id
    Wait Until Page Contains  Se connecter    10s
    Scroll Element Into View  id:email
    Input Text    id:email    zinzin2@gmail.com
    Input Password     //*[@id="loginModel_Email"]   truc237
    Click Button    //*[@id="login-form"]/form/div[4]/button
    Wait Until Element Is Visible    //*[@id="login-form"]/form/div[4]/div[1]/ul/li

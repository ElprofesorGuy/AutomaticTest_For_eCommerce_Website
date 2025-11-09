*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Create Account
    Click Element    id=auth-connect-id
    Click Element  id=signup-id
    Wait Until Element Is Visible    //*[@id="register-form"]/form
    #${random}=    Generate Random String    8    [NUMBERS]
    #${email}=    Set Variable    test${random}@example.com
    Scroll ELement Into View  id=registerModel_FirstName
    Input Text    id=registerModel_FirstName   Test
    Input Text    id=registerModel_LastName    User
    Scroll Element Into View  id=signup-email
    Input Text    id=signup-email   zozo5gmail.com
    Input Text    //*[@id="registerModel_Phone"]    620886579
    Input Password    //*[@id="registerModel_Password"]    ${NEW_PASSWORD}
    Input Password    //*[@id="registerModel_ConfirmPassword"]    ${NEW_PASSWORD}
    #Click Button    //*[@id="register-form"]/form/div[4]/button
    #Wait Until Element Is Visible    Accéder à mon compte    10s
    #Element Should Be Visible    css:.user-account

Create Account With Invalid Email
    Click Element    id=auth-connect-id
    Click Element  id=signup-id
    Wait Until Element Is Visible    //*[@id="register-form"]/form
    Scroll ELement Into View  id=registerModel_FirstName
    Input Text    id=registerModel_FirstName    Test
    Input Text    id=registerModel_LastName    User
    Scroll Element Into View  id=signup-email
    Input Text    id=signup-email    ${INVALID_EMAIL}
    Input Text    //*[@id="registerModel_Phone"]    698745577
    Input Password    //*[@id="registerModel_Password"]    hujsen123
    Input Password    //*[@id="registerModel_ConfirmPassword"]    hujsen123
    Click Button    //*[@id="register-form"]/form/div[4]/button
    Scroll Element Into VIew  //*[@id="register-form"]/form/div[4]/div[3]/span
    Wait Until Element Is Visible    //*[@id="register-form"]/form/div[4]/div[3]/span   10s
    #Element Should Contain    css:.error-message    email

Create Account with Not Strong Password
    Click Element    id=auth-connect-id
    Click Element  id=signup-id
    Wait Until Element Is Visible    //*[@id="register-form"]/form
    Scroll ELement Into View  id=registerModel_FirstName
    Input Text    id=registerModel_FirstName    Test
    Input Text    id=registerModel_LastName    User
    Scroll Element Into View  id=signup-email
    Input Text    id=signup-email    valid@example.com
    Input Text    //*[@id="registerModel_Phone"]    698745577
    Input Password    //*[@id="registerModel_Password"]    123
    Input Password    //*[@id="registerModel_ConfirmPassword"]    hujsen123
    Click Button    //*[@id="register-form"]/form/div[4]/button
    Alert Should Be Present    Le mot de passe doit avoir au moins 6 caractères.
    #Wait Until Element Is Visible    css:.error-message
    #Element Should Contain    css:.error-message    mot de passe
    
Create Account With Existing Email
    Click Element    id=auth-connect-id
    Click Element  id=signup-id
    Wait Until Element Is Visible    //*[@id="register-form"]/form
    Input Text    id=registerModel_FirstName    Test
    Input Text    id=registerModel_LastName    User
    Scroll Element Into View  id=signup-email
    Input Text    id=signup-email    zinzin52@gmail.com
    Input Text    //*[@id="registerModel_Phone"]    698745577
    Input Password    //*[@id="registerModel_Password"]    jujutsu5
    Input Password    //*[@id="registerModel_ConfirmPassword"]    jujutsu5
    Click Button    //*[@id="register-form"]/form/div[4]/button
    Wait Until Element Is Visible    //*[@id="register-form"]/form/div[4]/div[1]/ul/li    10s



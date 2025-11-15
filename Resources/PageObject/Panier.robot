*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Empty Cart
    Click Element  id=topcartlink
    Wait Until Page Contains  Votre panier est vide  5s

Pay Product
    Click Element  //*[@id="topcartlink"]
    Click Element  id=checkout
    Wait Until Page Contains  Vous êtes nouveau client
    Scroll Element Into View  //*[@id="loginModel_Email"]
    Click Element  //*[@id="loginModel_Email"]
    Input Text  //*[@id="loginModel_Email"]  zinzin52@gmail.com
    Scroll Element Into View  //*[@id="loginModel_Password"]
    Click Element  //*[@id="loginModel_Password"]
    Input Text  //*[@id="loginModel_Password"]  truc237
    Click Button  //*[@id="login-form"]/form/div[4]/button
    Wait Until Page Contains  Valider le mode paiement  5s
    Click Element  /html/body/div[7]/div/div/div/div[1]/div/div/div[1]/div[3]/div[1]/div[1]/div/div[1]
    Wait Until Page Contains  //*[@id="address-modal"]/div/div  5s
    Wait Until Page Contains  //*[@id="address-form-modal"]/div/div  5s
    Scroll Element Into View  //*[@id="method-payment*Payments.MobilePayment"]
    Click Element  //*[@id="method-payment*Payments.MobilePayment"]


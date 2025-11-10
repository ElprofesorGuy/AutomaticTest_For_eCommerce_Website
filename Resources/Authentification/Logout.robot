*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Log Out
    Click Element  id=auth-connect-id
    Click Element  //*[@id="list-auth-id"]/a[3]
    Wait Until Page Contains  Créer un compte
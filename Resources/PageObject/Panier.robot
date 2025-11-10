*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Empty Cart
    Click Element  id=topcartlink
    Wait Until Page Contains  Le panier est vide  5s


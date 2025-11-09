*** Settings ***
Library  SeleniumLibrary
Resource  variables.robot

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    SeleniumLibrary.Maximize Browser Window

End Web Test
    Close Browser

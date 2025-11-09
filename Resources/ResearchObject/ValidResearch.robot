*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Do Valid Search
    Input Text  ${INPUT_SEARCH}  ${SEARCH_KEYWORD}
    Click Button  ${BTN_SEARCH}
    Wait Until Element Is Visible  css:.product-list
    Element Should Be Visible  css:.product-item
    ${count} =  Get Element Count  css:.product-item
    Should Be True    ${count} > 0

Do Invalid Research
    Input Text  ${INPUT_SEARCH}  voiture237
    Click Button  ${BTN_SEARCH}
    Wait Until Element Is Visible  css:.no-results
    Element Should Contain  css:.no-results  Aucun résultat

Search By Category
    Click Element    css:.category-filter
    Click Element    css:[data-category="electronics"]
    Wait Until Element Is Visible    css:.product-list
    ${url}=    Get Location
    Should Contain    ${url}    category=electronics

Search By Price


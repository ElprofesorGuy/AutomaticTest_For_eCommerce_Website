*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Navigate
    Input Text    ${INPUT_SEARCH}    laptop
    Click Button    ${BTN_SEARCH}
    Wait Until Element Is Visible    css:.pagination
    ${page1_first_product}=    Get Text    css:.product-item:first-child .product-name
    Click Element    css:.pagination .page-2
    Wait Until Element Is Visible    css:.product-list
    ${page2_first_product}=    Get Text    css:.product-item:first-child .product-name
    Should Not Be Equal    ${page1_first_product}    ${page2_first_product}

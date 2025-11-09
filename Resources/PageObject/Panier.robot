*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Add Product To Cart
    Input Text  ${INPUT_SEARCH}    ${SEARCH_KEYWORD}
    Click Button    ${BTN_SEARCH}
    Wait Until Element Is Visible    css:.product-item
    Click Element    css:.product-item:first-child
    Wait Until Element Is Visible    ${BTN_ADD_TO_CART}
    ${product_name}=    Get Text    css:.product-name
    Click Button    ${BTN_ADD_TO_CART}
    Wait Until Element Is Visible    css:.cart-notification
    Click Element    ${CART_ICON}
    Wait Until Element Is Visible    css:.cart-item
    Element Should Contain    css:.cart-item    ${product_name}

Add Many Products
    Input Text    ${INPUT_SEARCH}    ${SEARCH_KEYWORD}
    Click Button    ${BTN_SEARCH}
    Wait Until Element Is Visible    css:.product-list
    # Ajouter le premier produit
    Click Element    css:.product-item:nth-child(1) ${BTN_ADD_TO_CART}
    Sleep    1s
    # Ajouter le deuxième produit
    Click Element    css:.product-item:nth-child(2) ${BTN_ADD_TO_CART}
    Sleep    1s
    # Vérifier le panier
    Click Element    ${CART_ICON}
    Wait Until Element Is Visible    css:.cart-items
    ${count}=    Get Element Count    css:.cart-item
    Should Be Equal As Numbers    ${count}    2


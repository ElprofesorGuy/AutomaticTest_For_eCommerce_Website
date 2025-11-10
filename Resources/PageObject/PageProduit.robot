*** Settings ***
Library  SeleniumLibrary
Resource    PageAccueil.robot
*** Keywords ***
Choose Product
    Click Element  //*[@id="main_category"]/div[1]/div[2]/div[3]/div/div[2]/div[2]/p/a
    Wait Until Page Contains  Ajouter au panier  20s

Add Product To Cart
    Scroll Element Into View    //*[@id="product-details"]/div[2]/div[2]/div[5]/div[1]/div[2]
    Click Element  //*[@id="product-details"]/div[2]/div[2]/div[5]/div[1]/div[2]
    Wait Until Page Contains  Panier  10s


Add Another Product To Cart
    #Scroll Element Into View    /html/body/div[7]/div[1]/ul/li[2]/a
    #Click Link  /html/body/div[7]/div[1]/ul/li[2]/a
    #Wait Until Page Contains    Panier
    #Click Element  //*[@id="product-details"]/div[2]/div[2]/div[5]/div[1]/div[2]
    Search Product   Tablettes
    Click Element  //*[@id="main_category"]/div[1]/div[2]/div[3]/div/div[3]/div[3]/button
    Wait Until Page Contains    Panier    5s

Add Another Product of Another Category To Cart
    #Click Element  /html/body/div[7]/div[1]/ul/li[1]/span[1]/a
    #Choose Product    ${INPUT_SEARCH}    Jouets
    #Click Element  //*[@id="product-details"]/div[2]/div[2]/div[5]/div[1]/div[2]
    Search Product    Lit
    Click Element      //*[@id="main_category"]/div[1]/div[2]/div[3]/div[1]/div[1]/div[3]/button
    Wait Until Page Contains  Panier  3s

Add Product Quantity
    Scroll Element Into View  //*[@id="add"]
    Click Button  //*[@id="add"]
    Sleep  2s

Substract Product Quantity
    Scroll Element Into View    //*[@id="subtract"]
    Click Button  //*[@id="subtract"]
    Sleep    2s

Define Product Quantity
    Click Element  //*[@id="addtocart_37850_EnteredQuantity"]
    Click Element  //*[@id="addtocart_37850_EnteredQuantity"]
    Input Text  //*[@id="addtocart_37850_EnteredQuantity"]  5

Delete Product To Cart
    Click Element  //*[@id="flyout-cart"]
    Wait Until Page Contains  Panier
    Scroll Element Into View    //*[@id="btnitemquantity416680"]
    Click Element    //*[@id="btnitemquantity416680"]
    Sleep    5s
*** Settings ***
Resource  ../Resources/common.robot
Resource  ../Resources/PageObject/PageAccueil.robot
Resource  ../Resources/PageObject/PageProduit.robot
Resource  ../Resources/PageObject/Panier.robot
Resource  ../Resources/Authentification/SignUp.robot
Resource  ../Resources/Authentification/Login.robot
Resource  ../Resources/Authentification/Logout.robot

Suite Setup    common.Begin Web Test
Suite Teardown    common.End Web Test

*** Test Cases ***
Acces website
    PageAccueil.Load Web Page
    PageAccueil.Search Web Site
    PageAccueil.Navigate to iziway WebSite

Control Empty Cart
    Panier.Empty Cart
    
Not Found Research
    PageAccueil.Bad Search Product  Avions

Found Research
    PageAccueil.Search Product  Tablettes

Choose Your Product
    PageProduit.Choose Product

Define Quantity
    PageProduit.Add Product Quantity
    PageProduit.Substract Product Quantity
    PageProduit.Define Product Quantity

Add To Cart
    PageProduit.Add Product To Cart

Add Another Product
    PageProduit.Add Another Product To Cart
    PageProduit.Add Another Product of Another Category To Cart

Invalid Registration
    SignUp.Create Account With Invalid Email
    SignUp.Create Account with Not Strong Password
    SignUp.Create Account With Existing Email

Valid Registration
    SignUp.Create Account

Invalid LogIn
    Login.Invalid Password Log In
    Login.Invalid Email Login In

Valid LogIn
    Login.Valid Log in

Log Out
    Logout.Log Out

Payment
    Panier.Pay Product

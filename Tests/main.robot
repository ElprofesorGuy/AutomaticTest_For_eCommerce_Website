*** Settings ***
Resource  ../Resources/common.robot
Resource  ../Resources/PageObject/PageAccueil.robot
Resource  ../Resources/PageObject/PageProduit.robot
Resource  ../Resources/Authentification/SignUp.robot
Resource  ../Resources/Authentification/Login.robot

Suite Setup    common.Begin Web Test
Suite Teardown    common.End Web Test

*** Test Cases ***
Acces website
    PageAccueil.Load Web Page
    PageAccueil.Search Web Site
    PageAccueil.Navigate to iziway WebSite
    
Not Found Research
    PageAccueil.Bad Search Product  Avions

Found Research
    PageAccueil.Search Product  Tablettes

Choose Your Product
    PageProduit.Choose Product
    PageProduit.Add Product Quantity
    PageProduit.Substract Product Quantity
    PageProduit.Add Product To Cart

Add Another Product
    PageProduit.Add Another Product To Cart
    PageProduit.Add Another Product of Another Category To Cart

Valid Registration
    SignUp.Create Account

Invalid Registration
    SignUp.Create Account With Invalid Email
    SignUp.Create Account with Not Strong Password
    SignUp.Create Account With Existing Email

Login
    Login.Valid Log in
    Login.Invalid Password Log In
    Login.Invalid Email Login In
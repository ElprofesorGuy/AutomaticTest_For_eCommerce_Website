*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Load Web Page
    Go To  ${GOOGLE_URL}

    Wait Until Page Contains  Google

Search Web Site
    Clear Element Text  name=q
    Input Text  name=q  iziway
    Press Keys  name=q  ENTER
    Wait Until Page Contains  Images  60s

Navigate to iziway WebSite
    Click Element  class=zReHs
    Wait Until Page Contains  Panier    10s

Search Product
    [Arguments]    ${NAME_PRODUCT}
    Click Element  ${INPUT_SEARCH}
    Input Text  ${INPUT_SEARCH}  ${NAME_PRODUCT}
    Press Keys  ${INPUT_SEARCH}  ENTER
    Wait Until Page Contains  Panier  20s

Bad Search Product
    Click Element  ${INPUT_SEARCH}
    Input Text  ${INPUT_SEARCH}  bateaux
    Press Keys  ${INPUT_SEARCH}  ENTER
    Wait Until Page Contains  Aucun Resultat trouvé
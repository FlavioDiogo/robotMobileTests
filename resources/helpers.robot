*** Settings ***
Documentation       Aqui teremos as kWs helpers

Library     AppiumLibrary

*** Variables ***
${PASSWORD}             xpath=//android.widget.EditText[contains(@index, '2')] 
${USERNAME}             xpath=//android.widget.EditText[contains(@index, '1')]
${SUBMIT}               xpath=//android.widget.Button[@content-desc="ENTER"]
${CLICK_CART}           xpath=//android.widget.Button[contains(@index, '1')]
${CONFIRM_PRODUCT}      xpath=//android.view.View[contains(@content-desc, 'Code Smell')]
${ADD_PRODUCT}          xpath=(//android.widget.Button[@content-desc="ADD"])[1]
${CHECK_ADDED_VISIBLE}  xpath=//android.widget.Button[@content-desc="ADDED"]
${CONFIRM_BUY_PRODUCT}  xpath=//android.widget.Button[@content-desc="BUY"]
${CONFIRM}              xpath=//android.view.View[@content-desc="Catalog"]
${REMOVE_ITEM}          xpath=//android.view.View[@content-desc="Code Smell"]/android.widget.Button
${REMOVED_ITEM}         xpath=//android.view.View[@content-desc="Code Smell"]


*** Keywords ***
Go to Product Page
    ${login}        Get Fixture         login

    Click Element                               ${USERNAME}
    Sleep   2           
    Input Text                                  ${USERNAME}         ${login}[username]

    Click Element                               ${PASSWORD}
    Sleep   2   
    Input Text                                  ${PASSWORD}         ${login}[password]

    Click Element                               ${SUBMIT}
    Wait Until Element Is Visible               ${CONFIRM}   
    Element Should Be Visible                   ${CONFIRM}  


Add Product
    Sleep   2
    ${element}=          Set Variable          ${ADD_PRODUCT}
    ${elementadded}=     Set Variable          ${CHECK_ADDED_VISIBLE}


    Click Element                               ${element}  
    Wait Until Element Is Visible               ${CHECK_ADDED_VISIBLE}
    Element Attribute Should Match              ${elementadded}      enabled     false

    Click Element                               ${CLICK_CART}
    Sleep   2
    Element Should Be Visible                   ${CONFIRM_PRODUCT}
    Element Should Be Visible                   ${CONFIRM_BUY_PRODUCT}

Remove Product
    Click Element                               ${REMOVE_ITEM}
    Wait Until Page Does Not Contain Element    ${REMOVED_ITEM}
    

    








# ${COMEÇAR}             COMEÇAR 
# ${HAMBURGUER}           xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]   
# ${NAV_VIEW}             id=io.qaninja.android.twp:id/navView 
# ${CONFIRM}              xpath=//android.view.View[@content-desc="Catalog"]
# ${HOME}                 xpath=//android.widget.Button[contains(@content-desc, 'ENTER')]



# Get Started
#     Wait Until Page Contains            ${COMEÇAR}              
#     CLick Text                          ${COMEÇAR} 

# Open nav
#     Wait Until Element IS Visible       ${HAMBURGUER}
#     Click Element                       ${HAMBURGUER}      
#     Wait Until Element Is Visible       ${NAV_VIEW} 

# Go To Login Form
#     Open nav

#     Click Text                  FORMS
#     Wait Until Page Contains    FORMS
    
#     Click Text                  LOGIN
#     Wait Until Page Contains    Fala QA, vamos testar o login?

# Go To Radio Buttons
#     Open nav

#     Click Text                  INPUTS
#     Wait Until Page Contains    INPUTS

#     Click Text                  BOTÕES DE RADIO
#     Wait Until Page Contains    Escolha sua linguagem preferida

# Go To Checkbox
#     Open nav

#     Click Text                  INPUTS
#     Wait Until Page Contains    INPUTS

#     Click Text                  CHECKBOX
#     Wait Until Page Contains    Marque as techs que usam Appium

# Go To Short Click
#     Open nav

#     Click Text                  BOTÕES
#     Wait Until Page Contains    CLIQUE SIMPLES

#     Click Text                  CLIQUE SIMPLES
#     Wait Until Page Contains    Botão clique simples

# Go To Long Click
#     Open nav

#     Click Text                  BOTÕES
#     Wait Until Page Contains    CLIQUE LONGO

#     Click Text                  CLIQUE LONGO
#     Wait Until Page Contains    Botão clique longo

# Go To Spinner
#     Open nav

#     Click Text                  FORMS
#     Wait Until Page Contains    FORMS
    
#     Click Text                  CADASTRO
#     Wait Until Page Contains    Bem-vindo, crie sua conta.
    
# Go to swipe
#     Open nav

#     Click Text                  AVENGERS
#     Wait Until Page Contains    AVENGERS
    
#     Click Text                  LISTA
#     Wait Until Page Contains    LISTA

# Go to HomePage
#    Wait Until Page Contains    ${HOME}
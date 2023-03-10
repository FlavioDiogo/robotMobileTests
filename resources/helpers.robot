*** Settings ***
Documentation       Aqui teremos as kWs helpers

Library     AppiumLibrary

*** Variables ***
${SORT_BUTTON}          xpath=//android.view.ViewGroup[contains(@content-desc, 'sort button')]
${SORT_PRICE_DESC}      xpath=//android.view.ViewGroup[contains(@content-desc, 'priceDesc')]
${CHECK_ORDER_OK}       xpath=//android.view.ViewGroup[@content-desc="active option"]/android.widget.TextView

${ADD_ITEM}             xpath=//android.widget.TextView[contains(@text, 'Sauce Labs Backpack')]
${VISIBLE_ITEM}         xpath=//android.widget.ScrollView[@content-desc="product screen"]/android.view.ViewGroup/android.widget.ImageView
${ADD_TO_CART}          xpath=//android.view.ViewGroup[@content-desc="Add To Cart button"]/android.widget.TextView
${CLICK_BADGE}          xpath=//android.view.ViewGroup[@content-desc="cart badge"]/android.widget.ImageView
${CONFIRM_ITEM_CART}    xpath=//android.widget.TextView[contains(@text, 'Sauce Labs Backpack')] 

${CONFIRM_PRODUCT}      xpath=//android.view.View[contains(@content-desc, 'Code Smell')]
${ADD_PRODUCT}          xpath=(//android.widget.Button[@content-desc="ADD"])[1]
${CHECK_ADDED_VISIBLE}  xpath=//android.widget.Button[@content-desc="ADDED"]
${CONFIRM_BUY_PRODUCT}  xpath=//android.widget.Button[@content-desc="BUY"]
${CONFIRM}              xpath=//android.view.View[@content-desc="Catalog"]
${REMOVE_ITEM}          xpath=//android.view.View[@content-desc="Code Smell"]/android.widget.Button
${REMOVED_ITEM}         xpath=//android.view.View[@content-desc="Code Smell"]


*** Keywords ***
Order product by Price - Descending
   
    Click Element                               ${SORT_BUTTON}
    Wait Until Element Is Visible               ${SORT_PRICE_DESC}
    Click Element                               ${SORT_PRICE_DESC}
    Wait Until Element Is Visible               ${SORT_BUTTON}
    Click Element                               ${SORT_BUTTON}
    Wait Until Element Is Visible               ${CHECK_ORDER_OK}
    Element Should Be Visible                   ${CHECK_ORDER_OK}
    Click Element                               ${SORT_PRICE_DESC}  

Add Product
  
    Click Element                               ${ADD_ITEM}
    Wait Until Element Is Visible               ${VISIBLE_ITEM}    
    Element Should Be Visible                   ${VISIBLE_ITEM}

    Swipe By Percent        67      52.1        69.4        28.9

    Click Element                               ${ADD_TO_CART}
    Click Element                               ${CLICK_BADGE}
    Wait Until Page Contains                    Sauce Labs Backpack
    Element Should Be Visible                   ${CONFIRM_ITEM_CART}







# ${COME??AR}             COME??AR 
# ${HAMBURGUER}           xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]   
# ${NAV_VIEW}             id=io.qaninja.android.twp:id/navView 
# ${CONFIRM}              xpath=//android.view.View[@content-desc="Catalog"]
# ${HOME}                 xpath=//android.widget.Button[contains(@content-desc, 'ENTER')]



# Get Started
#     Wait Until Page Contains            ${COME??AR}              
#     CLick Text                          ${COME??AR} 

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

#     Click Text                  BOT??ES DE RADIO
#     Wait Until Page Contains    Escolha sua linguagem preferida

# Go To Checkbox
#     Open nav

#     Click Text                  INPUTS
#     Wait Until Page Contains    INPUTS

#     Click Text                  CHECKBOX
#     Wait Until Page Contains    Marque as techs que usam Appium

# Go To Short Click
#     Open nav

#     Click Text                  BOT??ES
#     Wait Until Page Contains    CLIQUE SIMPLES

#     Click Text                  CLIQUE SIMPLES
#     Wait Until Page Contains    Bot??o clique simples

# Go To Long Click
#     Open nav

#     Click Text                  BOT??ES
#     Wait Until Page Contains    CLIQUE LONGO

#     Click Text                  CLIQUE LONGO
#     Wait Until Page Contains    Bot??o clique longo

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
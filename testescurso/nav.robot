*** Settings ***
Resource            ../resources/base.robot
Test Setup          Open Session
Test Teardown       Close Session

*** Variables ***
${TOOLBAR_TITLE}        id=io.qaninja.android.twp:id/toolbarTitle 


*** Test Case ***
Deve acessar a tela Dialogs

    Open nav   
   
    Click Text                          DIALOGS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}   
    Element Text Should Be              ${TOOLBAR_TITLE}    DIALOGS 
                                           
    
Deve acessar a tela Formularios
   
    Open nav
   
    Click Text                          FORMS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}    
    Element Text Should Be              ${TOOLBAR_TITLE}    FORMS

Deve acessar a tela Vingadores

    Open nav
   
    Click Text                          AVENGERS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}    
    Element Text Should Be              ${TOOLBAR_TITLE}    AVENGERS    
                                           
    




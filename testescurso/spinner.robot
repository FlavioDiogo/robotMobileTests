*** Settings ***
Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

*** Variable ***
${SPINNER}=     id=io.qaninja.android.twp:id/spinnerJob
${LIST}=        class=android.widget.ListView

*** Test Cases ***
Deve selecionar um perfil no formulario de cadastro QA
    Go To Spinner
    Choice Job  QA

Deve selecionar um perfil no formulario de cadastro DevOps
    Go To Spinner
    Choice Job  DevOps

*** Keywords ***
Choice Job
    [Arguments]                             ${target}

    Click Element                           ${SPINNER}
    Wait Until Element Is Visible           ${LIST}
    Click Text                              ${target}

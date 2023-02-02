*** Settings ***
Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

*** Variable ***
${REMOVE}   id=io.qaninja.android.twp:id/btnRemove

*** Test Cases ***
Deve remover o capitão América
    Go to swipe

    Swipe By Percent        88.88   18.22   47.22   18.22
    Wait Until Element Is Visible   ${REMOVE}   
    Click Element   ${REMOVE} 
    Sleep   5              
    
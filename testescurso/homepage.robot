*** Settings ***

Library     AppiumLibrary


*** Test Case ***
Deve abrir a tela principal
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/app-release.apk
   
    Wait Until Page Contains    Form Samples    10
    Close Application
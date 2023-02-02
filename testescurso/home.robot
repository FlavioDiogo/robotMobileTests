*** Settings ***

Library     AppiumLibrary


*** Test Case ***
Deve abrir a tela principal
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/twp.apk

    Wait Until Page Contains    Training Wheels Protocol    10
    Wait Until Page Contains    Mobile Version
    Close Application

*** Settings ***
Library         AppiumLibrary
#Library     JSONLibrary   

*** Keywords ***
Open Session
    Set Appium Timeout  10
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/saucelabs.apk
    

Close Session
    Capture Page Screenshot  
    Close Application

Get Fixture
    [Arguments]     ${fixture_file}
    ${fixture}      Load JSON From File
    ...             ${EXECDIR}/resources/fixtures/${fixture_file}.json    
    ...             encoding=UTF-8

    [Return]        ${fixture}

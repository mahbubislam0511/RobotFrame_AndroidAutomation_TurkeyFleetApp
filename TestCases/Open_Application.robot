*** Settings ***
Library     AppiumLibrary
Resource    ../Resources/OpenApplication_Keywords.robot

*** Test Cases ***
Open_Application
    Open Application    http://127.0.0.1:4723    platformName=Android   deviceName=emulator-5554    appPackage=com.scibd.scifleet    appActivity=com.scibd.scifleet.MainActivity    automationName=UiAutomator2
    Sleep    10s
    Click Skip
    Sleep    3s
    Click Done


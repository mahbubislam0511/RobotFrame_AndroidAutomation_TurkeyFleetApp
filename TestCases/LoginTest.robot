*** Settings ***
Library     AppiumLibrary
Resource    ../Resources/Login_Keywords.robot
Resource    ../Resources/OpenApplication_Keywords.robot

*** Variables ***
${Email}        123456789
${Password}     12345
${Expected_UserMessage}     Welcome to Turkey Fleet MS

*** Test Cases ***
Login Test with proper credentials
    Open Application    http://127.0.0.1:4723    platformName=Android   deviceName=emulator-5554    appPackage=com.scibd.scifleet    appActivity=com.scibd.scifleet.MainActivity    automationName=UiAutomator2
    Sleep    10s
    Click Skip
    Sleep    3s
    Click Done
    Sleep    3s
    Enter Email    ${Email}
    Sleep    3s
    Enter Password    ${Password}
    Sleep    3s
    Hide Keyboard
    Sleep    3s
    Click Element    ${btn_Signin}
    Sleep    55s
#   Verify User Message Title    ${Expected_UserMessage}
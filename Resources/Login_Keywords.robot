*** Settings ***
Library     AppiumLibrary
Library    XML
Variables       ../PageObjects/Locators.py


*** Keywords ***

Enter Email
    [Arguments]   ${Email}
    Click Element    ${txt_Email}
    Input Text    ${txt_Email}    ${Email}

Enter Password
    [Arguments]    ${Password}
    Click Element  ${txt_Password}
    Input Text    ${txt_Password}    ${Password}

Verify User Message Title
    [Arguments]     ${Expected_UserMessage}
    ${text} =      Get Element Text     ${txt_UserMessage}
    Should Be Equal As Strings    ${text}    ${Expected_UserMessage}
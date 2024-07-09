*** Settings ***
Library     AppiumLibrary
Variables      ../PageObjects/Locators.py

*** Keywords ***
Wait Until Page Contains Skip Button
       Wait Until Page Contains Element    ${btn_Skip}
Click Skip
       Click Element    ${btn_Skip}
Click Done
       Click Element    ${btn_Done}
*** Settings ***
Library     AppiumLibrary
Resource    ../Resources/NewRequestEntry_Keywords.robot
Resource    ../Resources/Login_Keywords.robot
Resource    ../Resources/OpenApplication_Keywords.robot
Variables   ../PageObjects/Locators.py

*** Variables ***
${Email}        123456789
${Password}     12345
${Expected_UserMessage}     Welcome to Turkey Fleet MS
${tn}    Mahbub
${TP}    5
${departure_location}       Chin
${destination_location}     Rakhaine
${purposeOfTravel}          Office pupose
${cn}                       01889299292
${NSM}                      Mahmud
${remarksText}              Remarkable
${narrative_text}           narrative
${analysis_text}            analysis
${amount_text}              50000



*** Test Cases ***
New Request Entry
        Open Application    http://127.0.0.1:4723    platformName=Android   deviceName=emulator-5554    appPackage=com.scibd.scifleet    appActivity=com.scibd.scifleet.MainActivity    automationName=uiautomator2
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
        Sleep    5s
        Click Element    ${btn_Signin}
        Sleep    55s
        Click Add Request
        Sleep    3s
        Enter TransportLocation
        Sleep    5s
        Enter Date
        Sleep    3s
        Enter TravelType
        Sleep    3s
        Enter officeInCharge
        Sleep    3s
        Enter Traveller Name    ${tn}
        Sleep    3s
        Enter Total Passenger    ${TP}
        Sleep    3s
        Hide Keyboard
        Enter Departure From    ${departure_location}
        Sleep    3s
        Hide Keyboard
        Enter Destination    ${destination_location}
        Hide Keyboard
        Sleep    3s
        Scroll Page
        Sleep    3s
        Enter PurposeOfTravel    ${purposeOfTravel}
        Sleep    3s
        Hide Keyboard
        Enter ContactNumber    ${CN}
        Sleep    3s
        Hide Keyboard
        Enter NonSCIMemberName    ${NSM}
        Sleep    3s
        Hide Keyboard
        Enter From Date
        Sleep    3s
        Enter To Date
        Sleep    3s
        Enter Remarks    ${remarksText}
        Sleep    3s
        Click Element    ${addChargingDetails}
        Sleep    5s
        Enter Narrative    ${narrative_text}
        Sleep    3s
        Enter Analysis    ${analysis_text}
        Sleep    3s
        Enter Account Code
        Sleep    3s
        Enter Amount    ${amount_text}
        Sleep    3s
        Enter Cost Center
        Sleep    3s
        Save Charging Details
        Sleep    3s
        Save New Request Entry
        Sleep    10s


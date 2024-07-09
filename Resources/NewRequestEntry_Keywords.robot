*** Settings ***
Library     AppiumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Click Add Request
    Click Element    ${btn_AddRequest}
Enter TransportLocation
    Click Element    ${transportLocation}
    Sleep    3s
    Click Element    ${hatay_transportLocation}
Enter Date
    Click Element    ${date}
    Sleep    3s
    Click Element    ${btn_Ok}
Enter TravelType
    Click Element    ${travel_Type}
    Sleep    3s
    Click Element    ${office_TravelType_Xpath}
    Sleep    3s
Enter officeInCharge
    Click Element    ${office_in_charge}
    Sleep    3s
    Click Element    ${select_OfficeInCharge}
    Sleep    3s
Enter Traveller Name
    [Arguments]     ${tn}
    Click Element    ${traveller_Name_Xpath}
    Input Text    ${traveller_Name_Xpath}    ${tn}
    Sleep    3s
Enter Total Passenger
    [Arguments]   ${TP}
    Click Element    ${total_Pass_Xpath}
    Input Text    ${total_Pass_Xpath}    ${TP}
    Sleep    3s
Enter Departure From
    [Arguments]   ${departure_location}
    Click Element    ${departure_from_Xpath}
    Input Text    ${departure_from_Xpath}    ${departure_location}
    Sleep    3S
Enter Destination
    [Arguments]     ${destination_location}
    Click Element    ${destination_Xpath}
    Input Text    ${destination_Xpath}    ${destination_location}
Enter PurposeOfTravel
    [Arguments]     ${purposeOfTravel}
    Click Element   ${purposeOfTravel_Xpath}
    Input Text    ${purposeOfTravel_Xpath}    ${purposeOfTravel}
Enter ContactNumber
    [Arguments]     ${CN}
    Click Element    ${contactNumber}
    Input Text    ${contactNumber}    ${cn}
Enter NonSCIMemberName
    [Arguments]     ${NSM}
    Click Element    ${nonSCIMemberName}
    Input Text    ${nonSCIMemberName}    ${NSM}
Enter From Date
    Click Element    ${dateFrom}
    Sleep    3s
    Click Element    ${select_date25}
    Sleep    3s
    Click Element    ${select_date25_OK}
Enter To Date
    Click Element    ${dateTo}
    Sleep    3s
    Click Element    ${select_date28}
    Sleep    3s
    Click Element    ${select_date28_OK}
Enter Remarks
    [Arguments]     ${remarksText}
    Input Text    ${remarks}    ${remarksText}
Scroll Page
     #Swipe top to right
     ${window_width}    Get Window Width
     ${window_height}    Get Window Height
     ${start_x}       Evaluate      ${window_width} * 0.5   #Get start point of seekbar.
     ${start_y}       Evaluate      ${window_height} * 0.7    #Get vertical location of seekbar.
     ${end_x}         Evaluate      ${window_width} * 0.5   #Get end point of seekbar.
     ${end_y}         Evaluate      ${window_height} * 0.3   #Get end point of seekbar.
     Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}

Enter Narrative
     [Arguments]    ${narrative_text}
     Click Element    ${narrative_Xpath}
     Input Text    ${narrative_Xpath}    ${narrative_text}
Enter Analysis
     [Arguments]      ${analysis_text}
     Click Element    ${analysis_Xpath}
     Input Text    ${analysis_Xpath}    ${analysis_text}
Enter Account Code
      Click Element    ${accountCode_Xpath}
      Sleep    3s
      Click Element    ${selectCode3003_Xpath}
Enter Amount
      [Arguments]      ${amount_text}
      Click Element    ${amount_Xpath}
      Sleep    3s
      Input Text    ${amount_Xpath}    ${amount_text}
Enter Cost Center
      Click Element    ${costCenter_Xpath}
      Sleep    3s
      Click Element    ${selectCostCenter_Xpath}
Save Charging Details
      Click Element    ${addChargingDetailsSave_Xpath}
Save New Request Entry
      Click Element    ${yesButton_Xpath}

    
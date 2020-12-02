*** Keywords ***
Suite Setup
   ${DEVICE_NAME}=   Get Connected Device Id
   Open Application  ${REMOTE_URL}  app=${APP_ANDROID}  automationName=${AUTOMATION_NAME}  platformName=${PLATFORM_NAME_ANDROID}  deviceName=${DEVICE_NAME}  appPackage=${APP_PACKAGE}  noReset=${RESET_OFF}  appActivity=${AppAct}
   Wait Until Page Contains        ${PAGE_TITLE}
   Page Should Contain Text        ${PAGE_TITLE}

Suite Teardown
   Close Application

Get Connected Device Id
   ${RUN_ADB_CMD} =  Run  adb devices
   ${GET_DEVICE_INFO}=   Split String    ${RUN_ADB_CMD}  \n
   ${GET_DEVICE_ID}=   Split String    ${GET_DEVICE_INFO}[1]  \t
   [Return]   ${GET_DEVICE_ID}[0]

Given I have an internet connection
   Get Network Connection Status
   Element Should Contain Text      ${INTERNET_CONNECTION_STATUS}     ${INTERNET_CONNECTION_TXT}
   Element Should Contain Text      ${INTERNET_DISPLAY_MSG_STATUS}    ${INTERNET_CONNECTION_DISPLAY_MSG}
   Capture Page Screenshot

When I have successfully downloaded the weather data
   Click Element                    ${CLICK_FETCH_DATA_BUTTON}
   Wait Until Element Is Visible    ${FETCH_DATA_TITLE_ID}
   Element Should Contain Text      ${FETCH_DATA_TITLE_ID}        ${FETCH_DATA_TITLE_TXT}   message="Weather Data Successfully Downloaded"
   Element Should Contain Text      ${FETCH_DATA_DESC_ID}         ${FETCH_WEATHER_DATA_MSG}
   Capture Page Screenshot

Then I can see the weather and temperature for today
   Click Element                    ${VIEW_RESULTS_BUTTON}
   Wait Until Element Is Visible    ${DISPLAY_TEMP_TITLE}
   Element Should Contain Text      ${DISPLAY_TEMP_TITLE}         ${DISPLAY_TEMP_TITLE_TXT}
   ${TODAY_WEATHER}=  Get Text      ${TODAY_WEATHER_VALUE}
   ${TODAY_TEMP}=     Get Text      ${TODAY_TEMPERATURE_VALUE}
   Capture Page Screenshot
   Log   Today Weather Is : ${TODAY_WEATHER}
   Log   Today Temperature Is : ${TODAY_TEMP}


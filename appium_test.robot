*** Settings ***
Library    AppiumLibrary
Resource    keyword.robot

*** Variables ***
${appPackage}    com.splendapps.splendo

*** Test Cases ***
Create First To Do List
    Open Application    http://192.168.1.120:4723    platformName=Android    deviceName=emulator-5556    appPackage=${appPackage}    appActivity=com.splendapps.splendo.MainActivity    automationName=Uiautomator2
    Wait and Click Element    com.android.permissioncontroller:id/permission_allow_button    #? using resource id
    # Wait and Click Element    //android.widget.Button[@text="Allow"]    #? using text
    # Wait and Click Element    //android.widget.Button[contains(@text, "Allow")]    #? using partial text
    # Wait and Click Element    //android.widget.Button[contains(@resource-id, "allow_button")]    #? using partial resource id
    # Wait and Click Element    //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button" and @text="Allow"]    #? using both resource id and text
    Wait and Click Element    com.splendapps.splendo:id/fabAddTask
    Wait and Input Text    com.splendapps.splendo:id/edtTaskName    My First To Do List from AppiumLibrary
    Click Element    com.splendapps.splendo:id/edtDueD
    Click Element    android:id/date_picker_header_year
    # Swipe    500    1600    500    400    800
    Swipe By Percent    50    50    50    30    100
    Click Element    //android.widget.TextView[@text="2035"]
    Click Element    //android.widget.Button[@resource-id="android:id/button1" and @text="OK"]
    Click Element    com.splendapps.splendo:id/fabSaveTask
    Wait and Click Element    com.splendapps.splendo:id/checkDone
    Close Application
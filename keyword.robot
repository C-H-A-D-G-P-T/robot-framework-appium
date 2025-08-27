*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Wait and Click Element
    [Arguments]    ${locator}    ${timeout}=15
    Wait Until Page Contains Element    ${locator}    timeout=${timeout}
    Click Element    ${locator}

Wait and Input Text
    [Arguments]    ${locator}    ${text}    ${timeout}=15
    Wait Until Page Contains Element    ${locator}    timeout=${timeout}
    Input Text    ${locator}    ${text}
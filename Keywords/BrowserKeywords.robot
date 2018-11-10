*** Settings ***
Library    Selenium2Library

*** Keywords ***
Open Browser And Maximize Window
    [Arguments]    ${browser}    ${url}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window


Capture Screenshot And Close Browser
    #Capture Page Screenshot
    Close Browser

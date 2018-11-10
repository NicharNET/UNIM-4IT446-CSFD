*** Settings ***
Library    Selenium2Library

*** Keywords ***
Open Browser And Maximize Window
    [Arguments]    ${browser}    ${url}
    Open Browser    ${url}    ${browser}


Capture Screenshot And Close Browser
    Close Browser

# Author: 
#    Andrea Kropackova
#
# Requirements covered: 
#    REQ_01_07
#    REQ_01_08
#    REQ_01_09

*** Settings ***
Library  Selenium2Library
Resource  ../Keywords/BrowserKeywords.robot
Resource  ../Keywords/CommonKeywords.robot
Resource  ../Settings/LoginSettings.robot
Resource  ../Objects/LoginObjects.robot
Resource  ../Settings/Credentials.robot

Test Setup  Open Browser And Maximize Window  ${browser}   ${url}
Test Teardown   Capture Screenshot And Close Browser

*** Test Cases ***
CSFD Valid Login and logout
    Click On CSFD Nav Item    ${login}
    Input Text    ${inputUser}   ${validUser} 
    Input Password    ${inputPassword}    ${validPassword}
    Click On CSFD Button      ${btnLogin}
    Verify Label Message    ${usernameNav}    ${usernameLabelNav}    ${validUser}
    Click On CSFD Nav Item    ${logout}
    

CSFD Invalid Login
    Click On CSFD Nav Item    ${login}
    Input Text    ${inputUser}   ${invalidUser} 
    Input Password    ${inputPassword}    ${invalidPassword}
    Click On CSFD Button    ${btnLogin}
    Wait until page contains    ${invalidLoginMessage}

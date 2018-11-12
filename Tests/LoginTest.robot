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
Resource  ../Objects/LoginObjects.robot
Resource  ../Settings/Credentials.robot
Resource  ../Settings/BrowserSettings.robot

Test Setup  Open Browser And Maximize Window  ${browser}   ${url}
Test Teardown   Capture Screenshot And Close Browser

*** Test Cases ***
CSFD Valid Login and logout
    Open CSFD Nav Item  ${login}  ${loginUrl}
    Insert Into Text Item Field     ${inputUser}   ${validUser}
    Insert Into Password Field   ${inputPassword}    ${validPassword}
    Click On CSFD Button      ${btnLogin}
    Verify Label Message    ${usernameNav}    ${usernameLabelNav}    ${validUser}
    Open CSFD Nav Item  ${logout}   ${loginUrl}

CSFD Invalid Login
    Open CSFD Nav Item  ${login}  ${loginUrl}
    Insert Into Text Item Field     ${inputUser}   ${invalidUser}
    Insert Into Password Field   ${inputPassword}    ${invalidPassword}
    Click On CSFD Button    ${btnLogin}
    Wait until page contains    ${invalidLoginMessage}

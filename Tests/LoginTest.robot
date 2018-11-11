# Author: 
#    Andrea Kropackova
#
# Requirements covered: 
#    REQ_01_07
#    REQ_0!_08
#    REQ_0!_09

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
    Login to CSFD    ${validUser}    ${validPassword}
    Logout

CSFD Invalid Login
    Login to CSFD    ${invalidUser}    ${invalidPassword}
    Invalid

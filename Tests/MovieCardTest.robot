# Author: 
#    Nikolas Charalambidis
#
# Requirements covered: 
#    REQ_02_01
#    REQ_02_02
#    REQ_02_03

*** Settings ***
Library  Selenium2Library
Resource  ../Keywords/BrowserKeywords.robot
Resource  ../Settings/LoginSettings.robot
Resource  ../Objects/CSFDObjects.robot
Resource  ../Keywords/CSFDCommon.robot

Test Setup  Open Browser And Maximize Window  ${browser}   ${url}
Test Teardown   Capture Screenshot And Close Browser

*** Test Cases ***

To Be Done Soon
    Open CSFD Nav Item  ${resetPswNav}  ${resetPswUrl}
    
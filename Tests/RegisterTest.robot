# Author: 
#    Filip Pazdera
#
# Requirements covered: 
#    REQ_01_04
#    REQ_01_05
#    REQ_01_06

*** Settings ***
Library  Selenium2Library
Resource  ../Keywords/BrowserKeywords.robot
Resource  ../Settings/LoginSettings.robot
Resource  ../Objects/CSFDObjects.robot
Resource  ../Keywords/CSFDCommon.robot

Test Setup  Open Browser And Maximize Window  ${browser}   ${url}
Test Teardown   Capture Screenshot And Close Browser

*** Test Cases ***

Register Exists Nickname
      Open CSFD Nav Item    ${registerNav}    ${registerUrl}
      Insert Into Text Item Field    ${registerNicknameInput}    ${usr_nickname}
      Insert Into Text Item Field    ${registerEmailInput}    ${non-existing_email}
      Agree And Click    ${registerTandC}    ${registerNext}
      Agree And Click    ${registerGDPR}    ${registerFinish}   
      Verify And Check Message    ${registerMsg}    ${registerMsgNickname}


Register Exists Email
      Open CSFD Nav Item    ${registerNav}    ${registerUrl}
      Insert Into Text Item Field    ${registerNicknameInput}    ${non_existing_nickname}
      Insert Into Text Item Field    ${registerEmailInput}    ${usr_email}
      Agree And Click    ${registerTandC}    ${registerNext}
      Agree And Click    ${registerGDPR}    ${registerFinish}
      Verify And Check Message    ${registerMsg}    ${registerMsgEmail}

Register Non Valid Date Of Birth
      Open CSFD Nav Item    ${registerNav}    ${registerUrl}
      Insert Into Text Item Field    ${registerNicknameInput}    ${non_existing_nickname}
      Insert Into Text Item Field    ${registerEmailInput}    ${non-existing_email}
      Insert Into Text Item Field    ${registerBirthInput}    ${incorect_birth_date}
      Agree And Click    ${registerTandC}    ${registerNext}
      Agree And Click    ${registerGDPR}    ${registerFinish}
      Verify And Check Message    ${registerMsg}    ${registerMsgBirth}
    
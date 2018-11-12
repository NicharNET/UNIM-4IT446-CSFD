# Author: 
#    Barbora Bučková
#
# Requirements covered: 
#    REQ_02_04
#    REQ_02_05
#    REQ_02_06

*** Settings ***
Library    Selenium2Library    
Resource  ../Keywords/BrowserKeywords.robot
Resource  ../Settings/BrowserSettings.robot
Resource  ../Keywords/CommonKeywords.robot
Resource  ../Objects/SearchObjects.robot

Test Setup  Open Browser And Maximize Window  ${browser}   ${url}
Test Teardown   Capture Screenshot And Close Browser

*** Test Cases ***

Search without filters
    Insert Into Text Item Field     ${searchField}    ${searchBasicText}
    Click on CSFD Button   ${searchBtn}
    Verify And Check Message    ${nameNav}    ${successNameSearch}

Search with filters - movie
    Open CSFD Nav Item    ${searchNav}    ${searchUrl} 
    Select From List By Index     ${ratingNav}        ${ratingIndex}
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight);
    Click On CSFD Button    ${searchBtnAdv} 
    Page Should Contain    ${successNameSearchAdv}

Search with filters - director
    Open CSFD Nav Item    ${searchNav}    ${searchUrl} 
    Open CSFD Nav Item    ${dirSwitch}    ${dirUrl}      
    Select From List By Index     ${sexNav}        ${sexIndex}
    Select Checkbox    ${typeNav}
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight);
    Click On CSFD Button    ${searchBtnAdvDir}  
    Page Should Contain    ${successDirSearchAdv}    
    





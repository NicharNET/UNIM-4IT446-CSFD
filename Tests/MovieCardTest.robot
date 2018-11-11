# Author: 
#    Nikolas Charalambidis
#
# Requirements covered: 
#    REQ_02_01
#    REQ_02_02
#    REQ_02_03

*** Settings ***
Library    Selenium2Library
Resource  ../Keywords/BrowserKeywords.robot
Resource  ../Settings/LoginSettings.robot
Resource  ../Keywords/CommonKeywords.robot
Resource  ../Objects/MovieCardObject.robot

Test Setup      Open Browser And Maximize Window  ${browser}   ${url}
Test Teardown   Capture Screenshot And Close Browser

*** Test Cases ***

#Verify Rating Of The Best Movie
#    Open CSFD Nav Item        ${ratingsNav}    ${ratingsUrl}
#    Click On CSFD Nav Item    ${firstMovieNav}
#    Check Rating              ${rating}        
    
#Verify Rating Of The Worst Movie
 #   Open CSFD Nav Item        ${ratingsNav}    ${ratingsUrl}
#    Click On CSFD Nav Item    ${worstMoviesNav}   
#    Click On CSFD Nav Item    ${firstMovieNav}  
    
Verify Movie Labels
    Open CSFD Nav Item        ${ratingsNav}    ${ratingsUrl}
    Click On CSFD Nav Item    ${firstMovieNav}
    Element Should Contain    ${directorNav}    Režie     
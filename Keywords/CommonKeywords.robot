*** Settings ***
Library    Selenium2Library
Library    String

*** Keywords ***
Click On CSFD Nav Item
    [Arguments]  ${navItem}
    Wait Until Element Is Visible   ${navItem}
    Page Should Contain Element    ${navItem}
    Click Link   ${navItem}
    
Click On CSFD Button
    [Arguments]  ${button}
    Wait Until Element Is Visible   ${button}
    Page Should Contain Element    ${button}
    Click Button   ${button}
    
Insert Into Text Item Field
    [Arguments]  ${inputItem}   ${value}
    Wait Until Element Is Visible   ${inputItem}
    Page Should Contain Element    ${inputItem}
    Input Text    ${inputItem}    ${value}

Verify Message Element Is On Page
    [Arguments]  ${message}
    Wait Until Element Is Visible   ${message}
    Page Should Contain Element    ${message}

Open CSFD Nav Item
    [Arguments]  ${navItem}     ${navUrl}
    Click On CSFD Nav Item    ${navItem}
    ${current_url}=  Get Location
    Should Be Equal As Strings  ${current_url}  ${navUrl}
    
Agree And Click
    [Arguments]    ${checkbox}    ${click}
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight);
    Select Checkbox    ${checkbox}
    Click Button    ${click}     

Verify And Check Message
    [Arguments]    ${element}    ${msg}
    Verify Message Element Is On Page    ${element} 
    Wait Until Page Contains    ${msg}  
   
Check Rating    
    [Arguments]  ${navItem}
    Wait Until Element Is Visible   ${navItem}
    Page Should Contain Element    ${navItem}
    ${percentage}=    Get Text    ${navItem}
    ${number}=     Replace String    ${percentage}    %   .0
    ${number}=     Convert To Number    ${number}     
    Should Be True    ${number}<100    
    Should Be True    ${number}>0    
    
Verify Label Message
    [Arguments]  ${nav}    ${label}    ${labelText}
    Click On CSFD Nav Item              ${nav}
    Verify Message Element Is On Page   ${label}
    ${string}=    Get Text  ${label}
    Should Match Regexp    ${string}    ${labelText}
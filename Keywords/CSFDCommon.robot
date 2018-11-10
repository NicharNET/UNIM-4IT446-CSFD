*** Settings ***
Library    Selenium2Library

*** Keywords ***
Click On CSFD Nav Item
    [Arguments]  ${navItem}
    Wait Until Element Is Visible   ${navItem}
    Page Should Contain Element    ${navItem}
    Click Link   ${navItem}

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
    
Login to CSFD
    [Arguments]    ${user}    ${pwd}
    Click Link    ${login}
    Input Text    ${inputUser}   ${user} 
    Input Password    ${inputPassword}    ${pwd}
    Click Button    ${btnLogin}
    
Logout
    Click Link    ${logout}
    
Invalid
    Wait until page contains    ${LoginMessage}    
   
    
    
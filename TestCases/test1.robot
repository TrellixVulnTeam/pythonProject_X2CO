*** Settings ***
Library  SeleniumLibrary
RESOURCE        ../Resources/login_resources.robot
Library  DataDriver     ../TestData/InvalidCreds.xls
Suite Setup     Open Checkealos browser
Suite Teardown  Close Browsers
Test Setup  Open login Page
Test Template  InValid Login


*** Variables ***
${Browser}     chrome
${Login Url}     http://staging1.checkealos.com/

*** Test Cases ***                   email                        password
TC_01_Verify Valid_Email_Empty_Password using       ${email} and  ${password}

*** Keywords ***

InValid Login
    [Arguments]     ${email}   ${password}
    input Email      ${email}
    input Password   ${password}
    Click Login Button
    sleep   3s
    Error message should be visible







*** Settings ***
Library  SeleniumLibrary
RESOURCE        ../Resources/login_resources.robot
Suite Setup     Open Checkealos browser
Suite Teardown  Close Browsers
Test Setup  Open login Page
Test Template  InValid Login


*** Variables ***
${Browser}     chrome
${Login Url}     http://staging1.checkealos.com/

*** Test Cases ***                   email                        password
TC_01_Verify Valid_Email_Empty_Password          vickyrocks86@gmail.com       ${EMPTY}
TC_02_Verify Valid_Email_Invalid_password        admin@checkealos.com         xyz
TC_03_Verify Invalid_email_invalid_password      admin1@checkealos.com        xyz
TC_04_Verify Empty_email_empty_password          ${EMPTY}                     ${EMPTY}

*** Keywords ***

InValid Login
    [Arguments]     ${email}   ${password}
    input Email      ${email}
    input Password   ${password}
    Click Login Button
    sleep   3s
    Error message should be visible







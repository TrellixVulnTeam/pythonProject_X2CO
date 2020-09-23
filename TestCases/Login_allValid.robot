*** Settings ***
Library  SeleniumLibrary
RESOURCE        ../Resources/login_resources.robot
Suite Setup     Open Checkealos browser
Suite Teardown  Close Browsers
Test Setup  Open login Page
Test Teardown  Click SignOut Button
Test Template  Valid Login

*** Variables ***
${Browser}     chrome
${Login Url}     http://staging1.checkealos.com/

*** Test Cases ***                   email                                  password
TC_05_Verify Valid_email_valid_adminpassword          admin@checkealos.com               password12#4
TC_06_Verify Valid_email_valid_testerpassword         kamlesh.otari@intelliswift.co.in   12345678
TC_07_Verify Valid_email_valid_analystpassword        kamlesh.analyst@mailcatch.com      Dinesh@123


*** Keywords ***

Valid Login
    [Arguments]     ${email}   ${password}
    input Email      ${email}
    input Password   ${password}
    Click Login Button
    sleep   3s







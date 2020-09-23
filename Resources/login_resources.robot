*** Settings ***
Library   SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${Browser}     chrome
${Login Url}     http://staging1.checkealos.com/

*** Keywords ***
Open Checkealos browser
    open browser     ${Login Url}     ${Browser}
    Maximize Browser Window
    click element  xpath://a[@class="sign-in"]
    sleep       3s


Open login Page
    click element  xpath://a[@class="sign-in"]
    sleep       3s
    element should be visible   id:user_email
    element should be enabled   id:user_email
    element should be visible   id:user_password
    element should be enabled   id:user_password

Input Email
    [Arguments]     ${email}
    input text      id:user_email       ${email}

Input Password
    [Arguments]     ${password}
    input text      id:user_password    ${password}

Click Login Button
    click element  xpath://input[@value="Sign In"]
    sleep   3s

Click SignOut Button
    click element   xpath://a[@href="/users/sign_out"]

Close Browsers
    Close all Browsers

Error message should be visible
    page should contain     Invalid email or password




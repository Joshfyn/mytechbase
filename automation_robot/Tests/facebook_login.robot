*** Settings ***
Documentation     Test Suite to verify facbook login
Library           SeleniumLibrary
Resource          ../Pages/facebook_login.resource

*** Test Cases ***
Login Using An Invalid Email Addresss
    [Documentation]                 Verifies that user cannot login using an invalid email address
    Open Browser and Navigate To Facebook
    Login to Facebook                       ${invalid_email_address}        ${valid_password}
    Wait Until Page Contains                ${login_unsuuccesful_message}
    Wait Until Element Is Visible           ${login_unsuuccesful}


Login using an invalid phone number
    [Documentation]                 Verifies that user cannot login using an invalid phone number
    Open Browser and Navigate To Facebook
    Login to Facebook                   ${invalid_phone_number}     ${invalid_password}
    Wait Until Page Contains            ${login_unsuuccesful_message}
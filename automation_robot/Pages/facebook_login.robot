*** Settings ***
Documentation     Verifies user facebook login
Variables         facebook_login.yaml


*** Keywords ***
Open Browser and Navigate To Facebook
    [Documentation]            opens browser and navigates to facebook URL
    Open Browser               ${FACEBOOK_URL}                ${BROWSER}


Login to Facebook
    [Documentation]            logs user into facebook browser and navigates to facebook URL
    [Arguments]                 ${valid_email_address_or_phone}         ${valid_password}
    Input Text                  ${email_or_phone_address_field}         ${valid_email_address_or_phone}
    Input Text                  ${password_field}                       ${valid_password}
    Click Button                ${login_button}



*** Settings ***
Documentation     Verifies user facbook login
Library           SeleniumLibrary

*** Variables ***
${browser}                          ff
${facebook_URL}                     https://www.facebook.com
${valid_email_address}              joshuaadeegbe@yahoo.com
${valid_password}                   mytechbase
${valid_phone_number}               +35844984795
${invalid_phone_number}             4795
${invalid_password}                 my
${login_unsuuccesful_message}       The password that you've entered is incorrect.


# LOCATOR
${email_or_phone_address_field}     //input[@name='email' and @data-testid='royal_email']
${password_field}                   //input[@id='pass' and @placeholder='Password']
${login_button}                     //button[@type="submit"]
${login_unsuuccesful}               //*[@id="loginform"]/div[2]/div[2]/a


*** Test Cases ***
Login Using An Invalid Email Addresss
    [Documentation]                 Verifies that user cannot login using an invalid email address
    Open Browser                    ${facebook_URL}                 ${browser}
    Input Text                              ${email_or_phone_address_field}          ${valid_email_address}
    Input Text                              ${password_field}               ${valid_password}
    Click Button                            ${login_button}
    Wait Until Page Contains                ${login_unsuuccesful_message}
    Wait Until Element Is Visible           ${login_unsuuccesful}


Login using an invalid phone number
    [Documentation]                 Verifies that user cannot login using an invalid phone number
    [Tags]                      smoke
    Go To                       ${facebook_URL}
    Input Text                  ${email_or_phone_address_field}         ${invalid_phone_number}
    Input Text                  ${password_field}                       ${valid_password}
    Click Button                ${login_button}
    Wait Until Page Contains    ${login_unsuuccesful_message}


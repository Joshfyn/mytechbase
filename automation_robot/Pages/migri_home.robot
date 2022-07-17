*** Settings ***
Documentation     Verifies migri appointment system
Variables         migri_home.yaml


*** Keywords ***
Open Browser and Navigate to Booking system
    [Documentation]         Opens browser and go to migri url
    Open Browser            ${MIGRI_URL}        ${BROWSER}
    #Click Element           ${BOOK_APPOINTMENT_BUTTON}

Change Language
    [Documentation]         Changes language to English
    Click Element           ${LANGUAGE_DROPDOWN}


Book for One Person
    [Documentation]         Books appointment for on persom
     Click Button           ${CHOOSE_CATEGORY_BUTTON}

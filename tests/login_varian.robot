*** Settings ***
Documentation       Test collection for varian home page
Library             SeleniumLibrary
Variables           ../resources/login.yaml
Variables           ../resources/test-data.yaml
Resource            ../resources/common.resource
Suite Setup         Run Keywords
...                 Go To Varian Login Page
...                 Change Language To English
Suite Teardown      Close Browser


*** Test Cases ***
Verify Login Using Invalid Email Address
    [Documentation]         Verifies User Cannot Login Using Invalid Email Address
    Input Text              ${EMAIL_ADDRESS_LOCCATOR}      ${invalid_credential.email}
    Input Text              ${PASSWORD_LOCATOR}            ${invalid_credential.password}
    Wait Until Element is Visible           ${DISABLE_LOGIN}


Verify Login Using Unregistered Email Address
    [Documentation]         Verifies User Cannot Login Using Unregistered Email Address
    Input Text              ${EMAIL_ADDRESS_LOCCATOR}       ${valid_credential.email}
    Input Text              ${PASSWORD_LOCATOR}             ${valid_credential.password}
    Click Element           ${LOG_IN_LOCATOR}
    Wait Until Element is Visible           ${ERROR_MESSAGE}







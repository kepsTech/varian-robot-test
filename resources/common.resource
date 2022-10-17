*** Settings ***
Documentation              Keywords collection for common usage


*** Variables ***
${LOGIN_URL}                https://demo.patient.noonatest.com/patient/#/login
${BROWSER}                  chrome
${LANGUAGE_DROPDOWN}         //div[@class="language-selection form-group"]
${WELCOME_LOCATOR}          //legend[@class="type--heading-1 login-header" and contains(text(), 'Welcome')]


*** Keywords ***
Go To Varian Login Page
    [Documentation]         opens varian login page
    Open Browser            ${LOGIN_URL}            ${BROWSER}
    Wait Until Element Is Visible                   ${WELCOME_LOCATOR}

Change Language To English
  [Documentation]       Changes language to preferred language
  Wait Until Element Is Visible         ${LANGUAGE_DROPDOWN}
  Click Element          ${LANGUAGE_DROPDOWN}

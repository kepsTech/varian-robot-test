*** Settings ***
Documentation       Test collection for varian home page
Library             SeleniumLibrary
Resource            ../resources/common.resource
Variables           ../resources/home_page.yaml
Suite Setup         Run Keywords
...                 Go To Varian Login Page
Suite Teardown      Close Browser


*** Test Cases ***
Verify That URL Directs Opens Varial Login Page
    [Documentation]         Verifies that urls directs us to the login page
    Wait Until Element Is Visible                   ${WELCOME_LOCATOR}

Verify That Login Instruction Appears Upon Navigation To URL
    [Documentation]         Verifies that upon nvgation to login urls, a login instruction appears
    Wait Until Element Is Visible                    ${LOGIN_INSTRUCTION}

Verify That The Language Options Appears
    [Documentation]            Verifies That The Language Text and Drop down is Visible
   Wait Until Element Is Visible                      ${LANGUAGE_DROPDOWN}

Verify That The Problems Logging In Text is Visible
    [Documentation]            Verifies That The Problems Logging In is Visible
    Wait Until Element Is Visible                     ${LOG_PROBLEM}

Verify That The Dont Have An Account Text is Visible
    [Documentation]            Verifies That The Dont Have An Account is Visible
    Wait Until Element Is Visible                         ${DONT_HAVE_ACCOUNT}

Verify That The Logo Design is Visible
    [Documentation]            Verifies That The Logo Design is Visible
    Wait Until Element Is Visible                         ${LOGO_DESIGN}


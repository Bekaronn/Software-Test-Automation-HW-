*** Settings ***
Resource  ../resources/resources.robot

*** Test Cases ***
Sign Up
    [Documentation]  Test register user
    Open Browser To DemoBlaze
    Click Element  ${Locators.SIGNUP_BUTTON}
    Sleep  1s
    INPUT TEXT  ${Locators.SIGNUP_USERNAME}  ${TestData.USERNAME}
    INPUT TEXT  ${Locators.SIGNUP_PASSWORD}  ${TestData.PASSWORD}
    Sleep  1s
    Click Button  ${Locators.SIGNUP_CONFIRM_BUTTON}
    Sleep  3s
    Close Browser

Log in
    [Documentation]  Test user login
    Open Browser To DemoBlaze
    Click Element  ${Locators.LOGIN_BUTTON}
    Sleep  1s
    INPUT TEXT  ${Locators.LOGIN_USERNAME}  ${TestData.USERNAME}
    INPUT TEXT  ${Locators.LOGIN_PASSWORD}  ${TestData.PASSWORD}
    Sleep  1s
    Click Button  ${Locators.LOGIN_CONFIRM_BUTTON}
    Sleep  3s
    Close Browser

Log out
    [Documentation]  Test user logout
    Open Browser To DemoBlaze
    Click Element  ${Locators.LOGIN_BUTTON}
    Sleep  1s
    INPUT TEXT  ${Locators.LOGIN_USERNAME}  ${TestData.USERNAME}
    INPUT TEXT  ${Locators.LOGIN_PASSWORD}  ${TestData.PASSWORD}
    Sleep  1s
    Click Button  ${Locators.LOGIN_CONFIRM_BUTTON}
    Sleep  3s
    Click Element    ${Locators.LOGOUT_BUTTON}
    Sleep  3s
    Close Browser

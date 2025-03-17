*** Settings ***
Library  SeleniumLibrary
Variables  ../resources/locators.py
Variables  ../resources/testData.py

*** Keywords ***
Open Browser To DemoBlaze
    Open Browser  ${TestData.URL}  chrome
    Sleep  2s

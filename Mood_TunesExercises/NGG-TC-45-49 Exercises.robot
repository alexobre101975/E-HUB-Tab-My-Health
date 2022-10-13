*** Settings ***
Library   AppiumLibrary
Resource    Resources/Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab My Health Tile Exercises
    [Tags]    Automation

    Open App
    # NGG-TC-49
    Home Exercises
    # NGG-TC-45
    Select And Enter Categories Exercises
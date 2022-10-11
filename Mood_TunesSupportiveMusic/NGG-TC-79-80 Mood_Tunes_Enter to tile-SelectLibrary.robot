*** Settings ***
Library     AppiumLibrary
Resource    Resources/Keyword NGG-TC-79-80.robot

Suite Setup       Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test My Health Supportive Music
    [Tags]    Automation

    Open App
    Page Home E-hub
    #NGG-TC-79
    Mood_Tunes_Enter to tile
    #NGG-TC-80
    Mood_Tunes_Select a Library
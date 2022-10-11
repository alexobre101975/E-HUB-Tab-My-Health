*** Settings ***
Library     AppiumLibrary
Resource    Resources/Keyword NGG-TC-83.robot

Suite Setup       Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test My Health Supportive Music
    [Tags]    Automation

    Open App
    Page Home E-hub
    Mood_Tunes_Enter to tile
    #NGG-TC-83
    Mood_Tunes_Library Supportive Music - Enter a Purpose
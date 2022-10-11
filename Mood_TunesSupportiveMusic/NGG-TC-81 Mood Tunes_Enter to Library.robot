*** Settings ***
Library     AppiumLibrary
Resource    Resources/Keyword NGG-TC-81.robot

Suite Setup       Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test My Health Supportive Music
    [Tags]    Automation

    Open App
    Page Home E-hub
    Mood_Tunes_Enter to tile
    #NGG-TC-81
    Mood Tunes_Enter to a Library
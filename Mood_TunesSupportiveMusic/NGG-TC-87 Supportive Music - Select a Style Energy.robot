*** Settings ***
Library   AppiumLibrary
Resource    Resources/Keyword NGG-TC-87.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test My Health Supportive Music Select Energy
    [Tags]    Automation

    Open App
    Page Home E-hub
    Mood_Tunes_Enter to tile
    Mood Tunes_Enter to a Library
    # NGG-TC-87
    Mood_Tunes_Library Supportive Music - Select a Style (Energy)
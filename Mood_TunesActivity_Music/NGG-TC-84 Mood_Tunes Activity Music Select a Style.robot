*** Settings ***
Library   AppiumLibrary
Resource    Resources/NGG-TC-84 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test My Health Activity Music
    [Tags]    Automation

   Open App
   Page Home E-hub
   Mood_Tunes_Enter to tile
   #NGG-TC-84
   Mood_Tunes_Library Activity Music - Select a Genre
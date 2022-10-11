*** Variables ***

${url}         http://127.0.0.1:4723/wd/hub
${PlatFormName}      Android
#We'll need to find the Android version that the eHub is using.
${PlatFormVersion}   7.1.2
#This can be replaced with the device name if using a remote device via adroid studio
${DeviceName}        192.168.1.133:5555
${Activity_NAME}      com.sentrics.engage360..presentation.MainActivity
${PACKAGE_NAME}       com.sentrics.engage360

*** Keywords ***
Open App
    Open Application   ${url}
  ...   platformName=${PlatFormName}
  ...   platformVersion=${PlatFormVersion}
  ...   deviceName=${DeviceName}
  ...   automationName=UiAutomator2
  ...   newCommandTimeout=2500
  ...   noReset=True
  ...   activateName=${Activity_NAME}
  ...   packageName=${PACKAGE_NAME}


Page Home E-hub
     #visible the tab  Entertainment and Windows visibles  (TV, External Device, DVR)
     Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvGroupName
     Element Should Be Visible       id=com.sentrics.engage360:id/tvGroupName        Entertainment

Mood_Tunes_Enter to tile
    #Download Tab My Health
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20

    #Enter the Window Mood Tunes
    Press Keycode       22
    Press Keycode       22
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Library

#NGG-TC-81
Mood Tunes_Enter to a Library
   #Enter Tab Supportive Music (Choose a Library)
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Wake
    Press Keycode       4
     # Visible tab Supportive Music
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Library

    # Enter Tab Activity Music (Choose a Library)
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Activity Music
    Press Keycode       20
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      15 Minute Exercise
    Press Keycode       4
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Library


    # Enter Tab Soundscapes (Choose a Library)
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible          id=com.sentrics.engage360:id/name      Soundscapes
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name      Nature's Melody
    Press Keycode       4
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible           id=com.sentrics.engage360:id/title      Choose a Library


    # Enter Tab Dining (Choose a Library)
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible          id=com.sentrics.engage360:id/name      Dining
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name      Breakfast
    Press Keycode       4
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible           id=com.sentrics.engage360:id/title      Choose a Library


    # Enter Tab Sundowning (Choose a Library)
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name      Sundowning
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible           id=com.sentrics.engage360:id/title      Sundown
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible               id=com.sentrics.engage360:id/title          Choose a Library


    #Enter Tab Music Trivia (Choose a Library)
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name      Music Trivia
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name      Music Trivia
    # Back Tab Supportive Music
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible              id=com.sentrics.engage360:id/title          Choose a Library



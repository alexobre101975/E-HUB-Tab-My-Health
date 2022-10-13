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



#NGG-TC-86
Mood_Tunes_Library Activity Music - Select a Purpose
    #Enter Tab Activty  Music (Choose a Library)
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Activity Music
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    # Visible Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      15 Minute Exercise

    # Select Tab 30 Minute Exercise
    Press Keycode       20
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      30 Minute Exercise

    # Select Tab Salon Day
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Salon Day

    # Select Tab Ice Cream Social
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Ice Cream Social

    # Select Tab Birthday Parties
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Birthday Parties

    # Select Tab Baking
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Baking

    # Select Tab Happy Hour
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Happy Hour

    # Select Tab Word Search, Trivia
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Word Search, Trivia

    # Select Tab Dominoes
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Dominoes

    # Select Tab Wine Tasting
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Wine Tasting

    # Select Tab Spa Day
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Spa Day

    # Select Tab Jewerly Making
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Jewerly Making

    # Select Tab Devotional/Spiritual
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Devotional/Spiritual

    # Select Tab Manicure/Pedicure
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Manicure/Pedicure

    # Select Tab Yoga
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name     Yoga

    # Select Tab Massage
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name    Massage

    # Select Tab Holiday
    Press Keycode       20

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name    Holiday
    Press Keycode       4

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title          Choose a Library


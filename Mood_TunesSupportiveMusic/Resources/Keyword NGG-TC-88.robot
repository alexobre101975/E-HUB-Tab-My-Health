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
     Wait Until Element Is Visible      id=com.sentrics.engage360:id/tvGroupName
     Element Should Be Visible          id=com.sentrics.engage360:id/tvGroupName        Entertainment

Mood_Tunes_Enter to tile
    #Download Tab My Health
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20

    #Enter the Window Mood Tunes
    Press Keycode       22
    Press Keycode       22
    Press Keycode       23

Mood Tunes_Enter to a Library
    #Enter Tab Supportive Music (Choose a Library)
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Supportive Music
    Press Keycode       23

#NGG-TC-88
Mood_Tunes_Library Supportive Music - Select a Style(Relax)
    # Enter Tab Relax
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Purpose
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Classical
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible           id=com.sentrics.engage360:id/title      	Choose a Style

    # Visible Select Tab Chamber
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Chamber

    #Select Tab Classical
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical

    # Select Tab Light Classical
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Light Classical

    # Back
    Press Keycode       4



    # Enter Tab Jazz
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible           id=com.sentrics.engage360:id/title      	Choose a Style
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Jazz
    Press Keycode       23

    # Visible Tab Big Band
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Big Band

    #Select Tab Classic Jazz
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classic Jazz

    # Select Tab Rat Pack
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Rat Pack

    # Select Smooth Jazz
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Smooth Jazz

    # Back
    Press Keycode       4






#    # Enter Tab Pop
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible           id=com.sentrics.engage360:id/title      	Choose a Genre
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Pop
    Press Keycode       23

     # Visible Tab 2000s Pop
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      2000s Pop

    # Select Tab 2010s Pop
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      2010s Pop

#    # Select Tab 70 Hits
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      70 Hits

    # Select Tab 80s Pop
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      80s Pop

    # Select Tab 90s Pop
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      90s Pop

    # Select Tab Contemporary Blend
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Contemporary Blend

    # Back
    Press Keycode       4


   # Enter Tab Urban
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible           id=com.sentrics.engage360:id/title      	Choose a Genre
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Urban
    Press Keycode       23

    # Visible Tab Blues
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Blues

    # Select Tab Classic R&B
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Blues

    # Select Tab Urban Adult Contemporany
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Urban Adult Contemporary

    # Back
    Press Keycode       4




    # Enter Tab Country
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible           id=com.sentrics.engage360:id/title      	Choose a Genre
    Press Keycode       22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Country
    Press Keycode       23

    # Visible Tab 2000s Country
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      2000s Country

    # Select Tab 2010s Country
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      2010s Country
    Press Keycode       20

    # Select Tab 70s, 80s, and 90s Country
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      70s, 80s, and 90s Country

    # Select Tab 80s Country
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      80s Country

    # Select Tab 90s Country
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      90s Country

    # Select Classic Country
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classic Country

    # Select Contemporary Country
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name     Contemporary Country

    # Select Country Blend
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name    Country Blend

    # Back
    Press Keycode       4



    # Enter Tab Latin
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible           id=com.sentrics.engage360:id/title      	Choose a Genre
    Press Keycode       22
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Latin
    Press Keycode       23

    # Visible Tab Latin Jazz
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Latin Jazz


    # Select Tab Regional Mexicano
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Regional Mexicano

    # Select Tab Salsa
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Salsa

    # Select Tab Tejano
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Tejano

    # Back
    Press Keycode       4


    # Enter Tab Rock
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible           id=com.sentrics.engage360:id/title      	Choose a Genre
    Press Keycode       22
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Rock
    Press Keycode       23

    # Visible Tab 2000s Rock
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      2000s Rock

    # Select Tab 2010s Rock
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      2010s Rock

    # Select Tab 60s Rock
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      60s Rock

    # Select Tab 70s Rock
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      70s Rock

    # Select Tab 80s Rock
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      80s Rock

    # Select Tab 90s Rock
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      90s Rock

    # Select Tab Classic Rock
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classic Rock

    # Select Tab Rock n' Roll Oldies
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name     Rock n' Roll Oldies

    # Back
    Press Keycode       4



    # Enter Tab Instrumental
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible           id=com.sentrics.engage360:id/title      	Choose a Genre
    Press Keycode       22
    Press Keycode       22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Instrumental
    Press Keycode       23

    # Visible Tab Easy Listening
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Easy Listening

    # Select Tab New Age
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      New Age

    # Select Tab Piano
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Piano

    # Back
    Press Keycode       4



    # Enter Tab Oldies
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible           id=com.sentrics.engage360:id/title      	Choose a Genre
    Press Keycode       22
    Press Keycode       22
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Oldies
    Press Keycode       23

    # Visible Tab 50s Hits
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      50s Hits

    # Select 60s Hits
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      60s Hits

    # Select Vocal Oldies
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Vocal Oldies

    # Back
    Press Keycode       4



    # Enter Tab Spiritual
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/title
    Element Should Be Visible           id=com.sentrics.engage360:id/title      	Choose a Genre
    Press Keycode       22
    Press Keycode       22
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Spiritual
    Press Keycode       23

    # Visible Tab Bluegrass Gospel
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Spiritual

    # Select Tab Conteporary Christian Blend
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Contemporary Christian Blend

    # Select Tab Conteporary Gospel
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Contemporary Gospel

    # Select Tab Country Inspirational
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Country Inspirational

    # Select Tab Gospel Blend
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Gospel Blend

    # Select Tab Gospel Choirs and Spirituals
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Gospel Choirs and Spirituals

    # Select Tab Hymns
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Hymns

    # Select Tab Inspiring Instrumentals
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Inspiring Instrumentals

    # Select Tab Southern Gospel
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Southern Gospel

    # Select Tab Spiritual chapel
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Spiritual chapel
    # Back
    Press Keycode       4
    # Back Choose Purpose
    Press Keycode       4





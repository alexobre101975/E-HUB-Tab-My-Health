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

#NGG-TC-85
Mood_Tunes_Library Supportive Music - Enter a Genre

    Press Keycode       23
    # Visible Tab Classical
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode       23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode       23
    # Visible Tab Chamber
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Classical
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


   # Enter Tab Jazz
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   23
    # Visible Big Band
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode   4
    # Back Classical
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre



    # Enter Tab Top
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   23
    # Visible Tab 70s Hits
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode   4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter Tab Urban
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode   20
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   23
    # Visible Tab Blues
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode   4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter Tab Country
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode   22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   23
    # Visible Tab 70s, 80s, and 90s, Country
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode   4
    # Back Tab Classical
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter Tab Latin
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode   22
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   23
    # Visible Tab Latin Jazz
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode   4
    # Back Tab Classical
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter Tab Rock
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode   22
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   23
    # Visible Tab 60s Rock
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode   4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter Tab Instrumental
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode   22
    Press Keycode   22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   23
    # Visible Tab Easy Listening
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode   4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter Tab Oldies
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode   22
    Press Keycode   22
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    # Visible Tab 50s Hits
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode   4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter Tab Spiritual
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode   22
    Press Keycode   22
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    # Visible Tab Spiritual
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode   4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    #Return Page a Choose a Purpose
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Purpose
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Wake
    Press Keycode       4




    # Enter Tab Energy
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Wake
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Energy
    Press Keycode       23

    #Enter  tab classical
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    # Visible Tab Chamber
    Press Keycode       23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back tab classical
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter tab Instrumental
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Instrumental
    # Visible Easy Listening
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter tab Oldies
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Oldies
    # Visible Tab 50s Hits
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back tab Classical
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter tab Show Tunes
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   20
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Show Tunes
    # Visible Classic Show Tunes
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre



#    # Enter tab Country
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Country
    # Visible Tab 2010s Country
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab classical
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter tab Jazz
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Jazz
    # Visible tab Big Band
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre

    # Enter tab Pop
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Pop
    # Visible Tab 2000s Pop
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter tab Spiritual
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   20
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Spiritual
    # Visible Tab Bluegrass Gospel
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter tab Holiday
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Holiday
    # Visible Tab Bluegrass Gospel
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter tab Latin
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   22
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Latin
    # Visible Tab Latin Jazz
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre


    # Enter tab Rock
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   22
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Rock
    # Visible Tab 2000s Rock
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Classical
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre



    # Enter tab Urban
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   22
    Press Keycode   20
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Urban
    # Visible Tab Blues
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    # Back Tab Blues
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    # Back a Choose a Purpose
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Purpose




    # enter Tab de Relax
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Wake
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Energy
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Relax

    # enter tab de Classical
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Jazz
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Jazz
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Pop
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Pop
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Urban
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   20
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Urban
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Country
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Country
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Latin
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Latin
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Rock
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Rock
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Instrumental
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Instrumental
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Oldies
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   22
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Oldies
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Spiritual
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   22
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Spiritual
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode       4








    # enter Tab de Sleep
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Wake
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Energy
     Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Relax
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Sleep

    # enter tab de Classical
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Jazz
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Jazz
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Pop
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Pop
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Urban
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   20
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Urban
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Country
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Country
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Latin
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Latin
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Rock
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Rock
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Instrumental
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Instrumental
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Oldies
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   22
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Oldies
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4

    # Enter tab Spiritual
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Genre
    Press Keycode   22
    Press Keycode   22
    Press Keycode   20
    Press Keycode   20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Spiritual
    Press Keycode   23
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/title
    Element Should Be Visible       id=com.sentrics.engage360:id/title      Choose a Style
    Press Keycode       4
    Press Keycode       4


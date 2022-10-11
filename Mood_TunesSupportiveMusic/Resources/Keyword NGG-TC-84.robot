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



 #NGG-TC-84
Mood_Tunes_Library Supportive Music - Select a Genre
    Press Keycode      23
    Press Keycode      23
    # visible Tab Classical
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical

    #Select Tab Jazz
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Jazz

    #Select Tab Pop
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Pop

       #Select Tab Urban
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Urban

    #Select Tab Rock
    Press Keycode       22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Rock

    #Select Tab Latin
    Press Keycode       19
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Latin

    #Select Tab Counttry
    Press Keycode       19
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Country

    #Select Tab Instrumental
    Press Keycode       22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Instrumental

    #Select Tab Oldies
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Oldies

    #Select Tab Spiritual
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Spiritual

    # Back Tan Wake
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Wake






    # Enter tab Energy
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Energy
    Press Keycode       23

    # visible Tab Classical
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical

    #Select Tab #Instrumental
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Instrumental

    #Select Tab Oldies
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Oldies

    #Select Tab Show Tunes
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Show Tunes

#    #Select Tab Spiritual
    Press Keycode       22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Spiritual

    # Select Tab Pop
    Press Keycode       19
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Pop

    # Select Tab Jazz
    Press Keycode       19
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Jazz

    # Select Tab Country
    Press Keycode       19
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Country

    # Select Tab Holiday
    Press Keycode       22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Holiday

    # Select Tab Latin
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Latin

    # Select Tab Rock
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Rock

    # Select Tab Urban
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Urban

    # Back Tab Wake
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Wake







    # Enter tab Relax
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Relax
    Press Keycode       23

    # Visible Tab Classical
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical

    # elect Tab # Jazz
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Jazz

    # elect Tab Pop
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Pop

    #Select Tab Urban
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Urban

   # Select Tab Rock
    Press Keycode       22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Rock

    # Select Tab Latin
    Press Keycode       19
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Latin

    # Select Tab Country
    Press Keycode       19
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Country

    # Select Tab Instrumental
    Press Keycode       22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Instrumental

    # Select Tab Oldies
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Oldies

    # Select Tab Spiritual
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Spiritual

    # Back Tab Wake
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Wake







    # Enter tab Sleep
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Sleep
    Press Keycode       23

    # Visible Tab Classical
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical


    # Select Tab Jazz
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Jazz

    # Select Tab Pop
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Pop

    #Select Tab Urban
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Urban

    # Select Tab Rock
    Press Keycode       22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name     Rock

    # Select Tab Latin
    Press Keycode       19
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name     Latin

    #Select Tab Country
    Press Keycode       19
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name     Country

    #Select Tab Instrumental
    Press Keycode       22
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name     Instrumental

    #Select Tab Oldies
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name     Oldies

    #Select Tab Spiritual
    Press Keycode       20
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name     Spiritual

    # Back Tab Wake
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Wake








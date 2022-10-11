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


  #NGG-TC-83
Mood_Tunes_Library Supportive Music - Enter a Purpose
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Supportive Music
    Press Keycode       23
    # Enter Tab Wake (Choose Purpose)
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Wake
    Press Keycode       23

    #Back (Choose Purpose)
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode       4


    #Enter Tab Energy(Choose Purpose)
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Energy
    Press Keycode       20
    Press Keycode       23

    #Back (Choose Purpose)
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode       4

    #Enter Tab Relax(Choose Purpose)
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Relax
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23
#
    #Back (Choose Purpose)
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical
    Press Keycode       4

    #Enter Tab Sleep(Choose Purpose)
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Sleep
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Back (Choose Purpose)
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Classical

    # Return page Tab Wake
    Press Keycode       4
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Wake




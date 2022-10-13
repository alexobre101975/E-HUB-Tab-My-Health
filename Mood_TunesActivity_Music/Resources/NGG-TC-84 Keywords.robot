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

    #Enter Tab Activty  Music (Choose a Library)
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      Activity Music
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23


   #NGG-TC-84
Mood_Tunes_Library Activity Music - Select a Genre
#    #Enter Tab Activty  Music (Choose a Library)
#    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
#    Element Should Be Visible           id=com.sentrics.engage360:id/name           Activity Music
#    Press Keycode       23

    # Enter Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name      15 Minute Exercise
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab Country
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Country

    # Select Tab Oldies
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Oldies

    # Select Tab Pop
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Pop

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

   # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name               15 Minute Exercise






    # Enter Tab 30 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           30 Minute Exercise
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab Country
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Country

    # Select Tab Pop
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Pop

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name               15 Minute Exercise





    # Enter Tab Salon Day
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Salon Day
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab 50s Hits
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           50s Hits

    # Select Tab Big Band
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Big Band

    # Select Tab Classic Country
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name          Classic Country

    # Select Tab Rat Pack
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name          Rat Pack

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name               15 Minute Exercise






    # Enter Tab Ice Cream Social
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Ice Cream Social
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab 50s Hits
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           50s Hits

    # Select Tab Big Band
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Big Band

    # Select Tab Classic Country
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name          Classic Country

    # Select Tab Vocal Oldies
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name          Vocal Oldies

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name               15 Minute Exercise



    # Enter Tab Birthday Parties
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Birthday Parties
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab 50s Hits
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           50s Hits

    # Select Tab Big Band
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Big Band

    # Select Tab Classic Country
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name          Classic Country

    # Select Tab Classic R&B
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name          Classic R&B

    # Select Tab Rock n' Roll Oldies
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name          Rock n' Roll Oldies

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name               15 Minute Exercise




    # Enter Tab Baking
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Baking
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab Big Band
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Big Band

    # Select Tab Easy Listening
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Easy Listening

    # Select Tab Smooth Jazz
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name         Smooth Jazz

    # Select Tab Vocal Oldies
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name          Vocal Oldies

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name               15 Minute Exercise


    # Enter Tab Happy Hour
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Baking
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab Classic Country
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Classic Country

    # Select Tab Light Classical
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Light Classical

    # Select Tab Rat Pack
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name         Rat Pack

    # Select Tab Rock n' Roll Oldies
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name          Rock n' Roll Oldies

    # Select Tab Vocal Oldies
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name         Vocal Oldies

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name               15 Minute Exercise



    # Enter Tab Word Search, Trivia
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Word Search, Trivia
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab Chamber Classical
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Chamber Classical

    # Select Tab New Age
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           New Age

    # Select Tab Piano
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name         Piano

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name               15 Minute Exercise



    # Enter Tab Dominoes
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Dominoes
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab Chamber Classical
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Chamber Classical

    # Visible Tab Easy Listening
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Easy Listening

    # Select Tab Light Classical
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Light Classical

    # Select Tab New Age
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name         New Age

    # Select Tab New Smooth Jazz
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name         Smooth Jazz

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible       id=com.sentrics.engage360:id/name               15 Minute Exercise




    # Enter Tab Wine Tasting
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Wine Tasting
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab Chamber Classical
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Chamber Classical

    # Visible Tab Easy Listening
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Easy Listening

    # Select Tab Light Classical
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Light Classical

    # Select Tab Piano
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name         Piano

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name               15 Minute Exercise




    # Enter Tab Spa Day
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Spa Day
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab Easy Listening
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Easy Listening

    # Visible Tab New Age
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           New Age

    # Select Tab Smooth Jazz
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Smooth Jazz

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name               15 Minute Exercise



    # Enter Tab Jewerly Making
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Jewerly Making
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab Easy Listening
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Easy Listening

    # Visible Tab New Age
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           New Age

    # Select Tab Piano
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Piano

    # Select Tab Smooth Jazz
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Smooth Jazz

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name               15 Minute Exercise





# Enter Tab Devotional/Spiritual
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Devotional/Spiritual
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab Inspiring Instrumentals
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Inspiring Instrumentals

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name               15 Minute Exercise





    # Enter Tab Manicure/Pedicure
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Manicure/Pedicure
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab New Age
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           New Age

    # Visible Tab Rat Pack
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Rat Pack

    # Select Tab Vocal Oldies
    Press Keycode       20
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Vocal Oldies

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name               15 Minute Exercise


    # Enter Tab Yoga
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name          Yoga
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab New Age
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           New Age

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name               15 Minute Exercise


    # Enter Tab Massage
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Massage
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab New Age
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           New Age

    # Visible Tab Piano
    Press Keycode       20
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Rat Pack

    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name               15 Minute Exercise


    # Enter Tab Holiday
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name           Holiday
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23

    #Enter Tab Common Areas
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas
    Press Keycode       23

    # Visible Tab Holiday
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Holiday


    # Back
    Press Keycode       4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/name
    Element Should Be Visible               id=com.sentrics.engage360:id/name           Common Areas

    Press Keycode           4
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/title
    Element Should Be Visible           	id=com.sentrics.engage360:id/title          Choose a Purpose

    # Return Tab 15 Minute Exercise
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/name
    Element Should Be Visible           id=com.sentrics.engage360:id/name               15 Minute Exercise

    Press Keycode       4

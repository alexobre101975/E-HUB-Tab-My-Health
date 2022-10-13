
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
# Enter to Aplications
    Open Application   ${url}
  ...   platformName=${PlatFormName}
  ...   platformVersion=${PlatFormVersion}
  ...   deviceName=${DeviceName}
  ...   automationName=UiAutomator2
  ...   newCommandTimeout=2500
  ...   noReset=True
  ...   activateName=${Activity_NAME}
  ...   packageName=${PACKAGE_NAME}

# NGG-TC-49
Home Exercises
       Press Keycode           20
       Press Keycode           20
       Press Keycode           20
       Press Keycode           22
       Press Keycode           23

# NGG-TC-45
Select And Enter Categories Exercises
# Enter Pace Slow
        Press Keycode        23
# Enter Pace Medium

       Press Keycode         22
       Press Keycode         23
# Enter Pace Fast

       Press Keycode         22
       Press Keycode         23
# Enter Level Seated

       Press Keycode         22
       Press Keycode         23
# Enter Level Supported

       Press Keycode         22
       Press Keycode         23
# Enter Level Standing

       Press Keycode         22
       Press Keycode         23
# Enter Level Advanced

       Press Keycode         22
       Press Keycode         23
# Back
      Press Keycode         4
      Press Keycode         4


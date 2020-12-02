============================================================
Weather Application Testing with Robot Framework and AppiumLibrary
============================================================

AppiumLibrary is an appium testing library for `Robot Framework`_.
In this sample usage of the library, you can find ios and android test suites
that are ready to execute. Also you can find how the reports look like.


Downloading package
------------------------

To get the code, you can either `download`_ the repository from GitHub or checkout
the `source code`_ directly.

Reports are also available online in `generated results`_.

Overview
--------
The feature is to view the temperature and weather for today using 'ConnectivityRemoteTest.apk’ android app. 
- Open the Application
- Check the Internet connection
- Fetch the Weather data if the internet is connected successfully
- Weather and Temperature for today can be viewed.
- The results are generated in log files and screenshot is captured.

Generated results
-----------------
After `running tests`_, you will get report and log in HTML format. Example
files are also available in the repo.

- `report.html`_
- `log.html`_

Preconditions
-------------
The installation of Appium and Robot Framework can be done using the terminal of macOS. The tools are also available for Windows and Linux.
To install Appium and RobotFramework, `Homebrew`_, `Node.js`_, `Java Development Kit`_ and `Python 3` should be installed. Some of them may be already installed on mac.
Android Studio should be installed to access the android sdk and it can be downloaded from Android Developer website.

Steps for Installation :

Install `Robot Framework`_ and `AppiumLibrary`

The simplest way is using `pip`_ package manager::

  pip install -r requirements.txt


Install `Homebrew`_

Open terminal, copy and run::
  
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


Nodejs Installation::
  
  brew install node

Check if the installation is successful::

  node -v
  # v12.6.0

  npm -v
  # 6.14.9

**Appium Installation**

Appium can be installed only if Nodejs application already exists because, we use npm to install it::

  npm install -g appium

You can use appium-doctor to confirm that the installation environment is complete::

  npm install -g appium-doctor
  
  appium-doctor

Install `Appium Desktop`_::

  Start appium desktop client

Install `Java Development Kit`_
  
Install JDK and set the environment variables for JAVA_HOME::

    export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_212.jdk/Contents/Home"

Install `Android Studio`_
  
Install Android Studio and set the environment variable for ANDROID_HOME::

    export ANDROID_HOME="~/Library/Android/sdk/"
    export PATH="~/Library/Android/sdk/platform-tools:$PATH"

Device Setup
------------
After installing the library, you still need to setup an emulator or real device to run tests.

Note : If you want test using real device, connect the device and run the command 'adb devices' to check whether the device is connected successfully.


Running tests
-------------

Test cases are located in the ``suites`` folder. They can be
executed using the ``robot`` command::

    robot  suites/*.robot

You can run the particular Testcase file/suite by using following command::

    robot suites/weather.robot


TODO
----
There are much more to improve, here is the list of things to come

- Circle.ci build pipeline
- SauceLabs Execution Support
- More coverage from library methods


.. _Robot Framework: http://robotframework.org
.. _Robot Framework User Guide: http://robotframework.org/robotframework/#user-guide
.. _pip: http://pip-installer.org
.. _download:  https://github.com/bkarthickbtech/dyson_qa_assessment/archive/master.zip
.. _source code:  https://github.com/bkarthickbtech/dyson_qa_assessment.git
.. _demoapp: https://github.com/bkarthickbtech/dyson_qa_assessment/ConnectivityRemoteTest.apk
.. _report.html: https://github.com/bkarthickbtech/dyson_qa_assessment/report.html
.. _log.html: https://github.com/bkarthickbtech/dyson_qa_assessment/log.html
.. _Homebrew: https://brew.sh/
.. _Node.js: https://nodejs.org/en/
.. _Java Development Kit: https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html
.. _Phyton 3: https://docs.python-guide.org/starting/install3/osx/
.. _Android Studio: https://developer.android.com/studio/
.. _Appium Desktop: http://appium.io/downloads.html
*** Settings ***
Documentation       Weather - In order to improve my hike today as a keen hiker I want to be able to view today's weather
Resource            ${EXECDIR}${/}resources${/}resources.robot
Suite Setup         Suite Setup
Suite Teardown      Suite Teardown
Force Tags          smoke

*** Test Cases ***
Scenario: Get the high level weather forecast
      Given I have an internet connection
      When I have successfully downloaded the weather data
      Then I can see the weather and temperature for today

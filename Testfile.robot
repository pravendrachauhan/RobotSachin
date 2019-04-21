*** Settings ***
Library    pythonfile.py    
Library    Selenium2Library
Library    OperatingSystem
Test Teardown    Close Browser


*** Test Cases ***
    
test2
    [Documentation]    selenium testcase
    [Tags]    smoke    regression
    #Set Environment Variable    webdriver.chrome.driver    /usr/local/bin/chromedriver
    Open Browser    http://www.google.com	browser=chrome
    #Open Browser    	http://4testautomation.com/SuiteCRM722/    browser=chrome
    #Close Browser
    
test3
    [Tags]    regression
    #Set Environment Variable    webdriver.chrome.driver   chromedriver.exe
    Open Browser    	http://www.newtours.demoaut.com/	browser=chrome
    Set Selenium Timeout    20 seconds
	Input Text    name=userName    pol@gmail.com
	Input Text    name=password    pol
	Click Element    name=login
	Click Element    name=findFlights
	Click Element    name=reserveFlights
	Input Text   name=passFirst0    pra
	Input Text   name=passLast0    cha
	Input Text   name=creditnumber    9999999999
	Click Element    name=buyFlights
	${bookingText}=    Get Text    xpath=//font[@size="+1"]
	#Should Be Equal    ${bookingText}    Your itinerary has been booked!
	Should Be Equal    ${bookingText}    Your itinerary has been
	
    
    
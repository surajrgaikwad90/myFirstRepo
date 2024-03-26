*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TabbledWindows    # name of testcase

    open browser    https://demo.automationtesting.in/Windows.html  Chrome
    maximize browser window

    click element    //a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    sleep    2
    switch window    title=Selenium
    sleep    2
    click element    //span[normalize-space()='Documentation']
    close all browsers

*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
#    create webdriver    webdriver.Chrome()
    open browser    https://practicetestautomation.com/practice-test-login/  Chrome
    Maximize Browser Window
    input text    XPATH://input[@id='username']    student
    input text    ID:password      Password123
    click element    XPATH://button[@id='submit']
    get title

*** Keywords ***
Set Environment Variable

    Set Environment Variable    webdriver.chromedriver.driver    Chrome
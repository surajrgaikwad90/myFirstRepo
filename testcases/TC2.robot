*** Settings ***
Library           Selenium2Library

*** Variables ***
${LoginUserType}    Type=email    # Login user email field.
${ClickNextButtonXpath}    xpath=//span[contains(text(),'Next')]    # Click on next button.
${UserPasswordName}    name=password    #Login user password field.
${NextButtonXpath}    xpath=//span[contains(text(),'Next')]    # User click on next button.
${UserProfileIcon}    //a[@class='gb_x gb_Da gb_f']    # Vefify that icon user profile.
${Geckodriver}    C:\\Users\\mahendra\\Downloads\\geckodriver-v0.24.0-win64\\geckodriver.exe
${chromedriver}    C:\\Users\\mahendra\\Downloads\\chromedriver_win32\\chromedriver.exe

*** Test Cases ***
Valid user login
    [Documentation]    Login Test Cases
    ... Step 1. Open browser.
    ... Step 2. Enter user email 'mahendra.seervi@connexistech.com' in user email field.
    ... Step 3. Click on next button.
    ... Step 4. Enter user password 'mahendra2020kag' in user password field.
    ... Step 5. Click on next button. Step 6. Verify that 'logout' link should display.

    Open Browser    https://www.gmail.com    ${chromedriver}
    Maximize Browser Window
    Wait Until Element Is Visible    \    30
    Input Text    ${LoginUserType}    mahendra.seervi@connexistech.com
    Click Element    ${ClickNextButtonXpath}
    Input Text    ${UserPasswordName}    2586355
    Click Element    ${NextButtonXpath}
    Page Should Contain Element    ${UserProfileIcon}

*** Keywords ***
Set Environment Variable
    Set Environment Variable    webdriver.geckodriver.driver    ${Geckodriver}
    Set Environment Variable    webdriver.chromedriver.driver    ${chromedriver}
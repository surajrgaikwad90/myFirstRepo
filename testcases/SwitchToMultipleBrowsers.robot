*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MultipleBroswersTest    # name of testcase

    open browser    https://www.google.com/  Chrome
    maximize browser window

    sleep    2 second

    open browser    https://www.amazon.in   Chrome
    maximize browser window

    open browser    https://www.flipkart.com   Chrome
    maximize browser window

    switch browser     1     # switch to browser index 1 i.e. google.com
    ${title1}  get title
    log to console    ${title1}

    switch browser     2     # switch to browser index 2 i.e. amazon.in
    ${title2}  get title
    log to console    ${title2}

    switch browser     3     # switch to browser index 3 i.e. flipkart.com
    ${title3}  get title
    log to console    ${title3}

    switch browser    1     # switch back to the browser index 1 i.e. Google.com
    ${title1}  get title
    log to console    ${title1}

    close all browsers



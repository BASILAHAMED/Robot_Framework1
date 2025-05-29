*** Settings ***
Documentation     Page Objects for SignUp Page
Library           SeleniumLibrary

*** Variables ***
${SIGNUP_URL}     https://qavbox.github.io/demo/signup/
${FULL_NAME}      Basil
${EMAIL}          basil@example.com
${TELEPHONE}      987654123
${GENDER}         Male
${EXPERIENCE}     five
${SKILLS}         automationtesting
${AUTOMATION_TOOLS}    Selenium

*** Keywords ***
Start SignUp Page
    [Documentation]    Open browser and navigate to SignUp page
    Open Browser    ${SIGNUP_URL}    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Capture Page Screenshot    ../Screenshots/start_page.png

Fill SignUp Form
    [Documentation]    Fill the signup form with valid details
    Input Text    id=username    ${FULL_NAME}
    Input Text    id=email    ${EMAIL}
    Input Text    id=tel    ${TELEPHONE}
    Select From List By Label    name=sgender    ${GENDER}
    Click Element    xpath=//input[@value='${EXPERIENCE}']
    Click Element    xpath=//input[@value='${SKILLS}']
    Select From List By Label    id=tools    ${AUTOMATION_TOOLS}
    Capture Page Screenshot    ../Screenshots/filled_form.png

Submit Form
    [Documentation]    Submit the form and handle the confirmation alert
    Click Button    id=submit
    Alert Should Be Present    Registration Done!
    Capture Page Screenshot    ../Screenshots/submitted_form.png


Shutdown
    [Documentation]    Close the browser
    Close All Browsers


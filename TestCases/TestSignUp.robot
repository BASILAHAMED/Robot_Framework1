*** Settings ***
Documentation    Test Suite for Signup Page
Resource         ../PageObjects/SignUpPage.robot

# Run the Test-Script using the command:
# robot -d Reports TestCases/TestSignUp.robot

*** Test Cases ***
TestCase-1: Open Signup Page
    Start SignUp Page

TestCase-2: Fill Signup Form
    Fill SignUp Form

TestCase-3: Submit Form
    Submit Form

TestCase-4: Close Browser
    Shutdown

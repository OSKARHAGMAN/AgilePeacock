*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/mainResource.robot
Resource  ../Resources/deleteModelResources.robot
Resource  ../Resources/createModelResource.robot
Resource  ../Resources/labelsShownResource.robot
Library  ../Scripts/remove_text.py
Suite Setup  Start WebTest
Suite Teardown  End WebTest

*** Test Cases ***
Overview of labels are displayed
    [Documentation]  Test will verify that labels from chosen dataset is present after creating model
    [Tags]  AG_64
    Login
    Press Create New Model
    Press Continue To Model Creation
    Press Dataset With Existing Labels Button
    Verify Text Button Is Checked
    Select Train Directly On Labels
    Confirm Labels In Model View
    Navigate To Model Overview
    Confirm Labels In Bar Chart
    Scroll Down To Pie Chart
    Confirm Labels In Pie Chart



#Delete Model After Test
 #   Delete Model




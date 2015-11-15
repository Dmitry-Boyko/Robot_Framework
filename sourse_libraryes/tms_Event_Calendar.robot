*** Settings ***
Documentation  This file contain steps for create, verify and delete Self-Paced event.
Library  Selenium2Library
Resource  ../PO/source_events.robot
#Resource  ../Resources/submenu_events.robot
Library  DateTime
Library  String
*** Variables ***

*** Keywords ***

Add Start Date
    # Calendar: Start date
    ${yyyy}    ${mm}    ${dd}    Get Time    year,month,day  NOW + 2 days
    ${start_date}    Set Variable    ${mm}/${dd}/${yyyy}
    input text  ${STRT_EVENT_DATE}  ${start_date}

Add End Date
    # Calendar: End date
    ${yyyy}    ${mm}    ${dd}    Get Time    year,month,day  NOW + 3 days
    ${end_date}    Set Variable    ${mm}/${dd}/${yyyy}
    input text  ${END_EVENT_DATE}   ${end_date}
    sleep  10



*** Settings ***
Library  String

*** Keywords ***
Add Email
    ${email} =  Generate Random String    8   [LOWER]
    input text  ${USER_EMAIL}  test_${email}@name.com

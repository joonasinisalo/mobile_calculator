*** Settings ***
Resource         ${CURDIR}${/}..${/}resources${/}keywords.resource
Suite Teardown   Close All Applications

# Run command:
# robot -d output tests\calculator.robot

*** Test Cases ***
Verify 98+4 Equals 102
    AppState        Calculator
    ClickText       9
    ClickText       8
    ClickItem       add        # here we use part of resource-id to click "+" -button
    ClickText       4
    ClickItem       eq         # here we use part of resource-id to click "=" -button
    VerifyText      102

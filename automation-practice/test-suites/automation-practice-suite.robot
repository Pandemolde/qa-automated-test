*** Settings ***
Documentation     *Purpose*: automate the purchase process of a product using http://automationpractice.com, which is a site for practicing QA automation over an e-commerce page
Test Setup        Test Setup
Test Teardown     Test Teardown
Resource          variables.robot
Resource          keywords.robot

*** Test Cases ***
When a product is added to the cart Then the purchase process shall be performed successfully
    [Documentation]    *Purpose*: This test checks that when a product is searched and added to the cart, then the purchase flow shall be completed successfully,
    ...
    ...    *Acceptance Criteria*: Searched elements shall be purchased, added to the cart and then the purchasing process shall be completed without errors.
    [Tags]    NOMINAL
    Sign in into the website
    Search for a shirt product
    Add shirt product to the cart
    Check cart summary
    Proceed to shipment method
    Proceed to payment


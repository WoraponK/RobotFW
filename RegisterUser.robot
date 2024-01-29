*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://automationexercise.com    chrome

*** Variables ***
${name}    example
${email}    65022780@example.com
${password}    123456

*** Keywords ***
Click 'Products' button
    Click Element    xpath://*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a

Hover over first product and click 'Add to cart'
    Mouse Over    xpath:/html/body/section[2]/div[1]/div/div[2]/div[1]/div[2]/div/div[1]/div[1]
    Click Button    xpath:/html/body/section[2]/div[1]/div/div[2]/div/div[2]/div/div[1]/div[2]/div/a/text()

Click 'Continue Shopping' button
    Click Element    xpath://*[@id="cartModal"]/div/div/div[3]/button

Hover over second product and click 'Add to cart'
    Mouse Over    xpath:/html/body/section[2]/div[1]/div/div[2]/div[1]/div[3]/div/div[1]/div[1]
    Click Element    xpath:/html/body/section[2]/div[1]/div/div[2]/div[1]/div[3]/div/div[1]/div[2]/div/a

Click 'View Cart' button
    Click Element    xpath://*[@id="cartModal"]/div/div/div[2]/p[2]/a

*** Test Cases ***
Add Products in Cart
    Click 'Products' button
    Hover over first product and click 'Add to cart'
    Click 'Continue Shopping' button
    Hover over second product and click 'Add to cart'
    Click 'View Cart' button
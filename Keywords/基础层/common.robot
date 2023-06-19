*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${username}       user2123013
${pwd}            Abc12345678

*** Keywords ***
登录BI系统
    Open Browser    https://fanruanclub.com/login/signin?app=frdemo&referrer=https%3A%2F%2Fpcdemo.finebi.com%2Fwebroot%2Fdecision%2Flogin%3Forigin%3D    Chrome    options=add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Click Element    //*[@id="wrapper"]/div[1]/div[2]/div/div[2]/div[1]/div/div[2]/div
    Input Text    //*[@id="wrapper"]/div[1]/div[2]/div/div[2]/div[3]/div/div[2]/div/div[2]/input    user2123013
    Input Password    //*[@id="wrapper"]/div[1]/div[2]/div/div[2]/div[3]/div/div[2]/div/div[4]/input    Abc12345678
    Click Element    //*[@id="wrapper"]/div[1]/div[2]/div/div[2]/div[3]/div/div[2]/div/div[7]
    sleep    3

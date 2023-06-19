*** Settings ***
Test Setup        登录BI系统
Library           SeleniumLibrary
Resource          ../Keywords/基础层/common.robot

*** Test Cases ***
001查看报表
    Wait Until Page Contains    新手入门
    Click Element    //*[@id="entry_c525ddb5_2402_4a04_b573_87cbbe28a13f"]/div[3]/div
    Click Element    //*[@id="entry_41f1f7c0_a8f0_4772_91e4_3a06a457fca0"]/div[2]
    Wait Until Page Contains    入门学习路径





002报表刷新与收藏
    Wait Until Page Contains    新手入门
    Click Element    //*[@id="entry_c525ddb5_2402_4a04_b573_87cbbe28a13f"]/div[3]/div
    Click Element    //*[@id="entry_41f1f7c0_a8f0_4772_91e4_3a06a457fca0"]/div[2]
    Wait Until Page Contains    入门学习路径
    Comment    报表刷新
    Mouse Over    //*[@id="wrapper"]/div/div/div[2]/div[2]/div/div/div[2]/div[1]/div/div[2]/div[2]/div/div[1]/div
    Click Element    //*[@id="wrapper"]/div/div/div[2]/div[2]/div/div/div[2]/div[1]/div/div[2]/div[2]/div[2]/div[1]/div/div[1]
    Wait Until Page Contains    入门学习路径
    Comment    报表收藏
    Mouse Over    //*[@id="wrapper"]/div/div/div[2]/div[2]/div/div/div[2]/div[1]/div/div[2]/div[2]/div/div[1]/div
    Click Element    //*[@id="wrapper"]/div/div/div[2]/div[2]/div/div/div[2]/div[1]/div/div[2]/div[2]/div[2]/div[1]/div/div[2]

003关闭当前报表
    Wait Until Page Contains    新手入门
    Click Element    //*[@id="entry_c525ddb5_2402_4a04_b573_87cbbe28a13f"]/div[3]/div
    Click Element    //*[@id="entry_7f4dc2f1_4287_4c6a_b2b2_696485d2be31"]/div[2]
    Wait Until Page Contains    合同表
    Click Element    //*[@id="wrapper"]/div/div/div[2]/div[2]/div/div/div[2]/div[1]/div/div[2]/div[2]/div/div[2]/i

004关闭全部报表
    Wait Until Page Contains    新手入门
    Click Element    //*[@id="entry_c525ddb5_2402_4a04_b573_87cbbe28a13f"]/div[3]/div
    Click Element    //*[@id="entry_7f4dc2f1_4287_4c6a_b2b2_696485d2be31"]/div[2]
    Wait Until Page Contains    合同表
    Click Element    //*[@id="entry_41f1f7c0_a8f0_4772_91e4_3a06a457fca0"]/div[2]
    Wait Until Page Contains    入门学习路径
    Click Element    //*[@id="wrapper"]/div/div/div[2]/div[2]/div/div/div[2]/div[1]/div/div[3]/div/div[1]/div/i
    Click Element    //*[@id="wrapper"]/div/div/div[2]/div[2]/div/div/div[2]/div[1]/div/div[3]/div/div[2]/div/div/div[1]/div[2]

005报表搜索框
    Wait Until Page Contains    新手入门
    Click Element    //*[@id="wrapper"]/div/div/div[2]/div[2]/div/div[1]/div[1]/div[1]/div[1]/div[2]/i
    Input Text    //*[@id="wrapper"]/div/div/div[2]/div[2]/div/div[1]/div[1]/div[1]/div[1]/div[3]/div/div/div[1]/div/input    数据分析
    Wait Until Page Contains    数据分析

*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://shopee.co.th/(Pre-Order)-Xiaomi-iHealth-BloodPressure-Monitor-2-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%94%E0%B8%B1%E0%B8%99-%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99-2-i.8172430.1307643368?fbclid=IwAR3NyTASTD-SH_wLw3XQ-Xs-U-cJ3hbqzzkDfyWcr7ya00tIhRsO1dF4F7I


*** Test Cases ***
ซื้อของด้วย shopee
    เปิดโครมเข้าไปที่ shopee
    เลือกภาษา
    เช็คสินค้า
    กดซื้อสินค้า
    Login
    กด Login
    รอใส่ key
    กดตะกร้า
    กดสั่งซื้อสินค้า
    เช็คราคารวมและจำนวนสินค้า
    เลือกการชำระเงิน

*** Keywords ***
เปิดโครมเข้าไปที่ shopee
    Open Browser    ${URL}    chrome
เลือกภาษา
    Wait Until Page Contains    เลือกภาษา
    Click Element    //*[@id="modal"]/div[1]/div[1]/div/div[3]/div[1]/button
เช็คสินค้า
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[2]/div[2]/div[3]/div/div[1]/span    (Pre-Order) Xiaomi iHealth Blood Pressure Monitor 2 - เครื่องวัดความดัน รุ่น 2
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[2]/div[2]/div[3]/div/div[3]/div/div/div/div/div/div    ฿11,160
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[2]/div[3]/div[1]/div[1]/div/div[1]    pumper2500
กดซื้อสินค้า
    Click Element    //*[@id="main"]/div/div[2]/div[2]/div[2]/div[2]/div[3]/div/div[5]/div/div/button[2]
Login
    Wait Until Page Contains    เข้าสู่ระบบ
    Input Text    name:loginKey    0980159795
    Input Text    name:password    Near280741
กด Login
    Press Keys    //*[@id="main"]/div/div[2]/div/div/div/div[2]/form/div/div[2]/button    RETURN
รอใส่ key
    Sleep    25 seconds
กดตะกร้า
    Click Element    class:cart-drawer-container
กดสั่งซื้อสินค้า
    Wait Until Element Contains     class:cart-item__cell-total-price    ฿11,160
    Click Element    //*[@id="main"]/div/div[2]/div[2]/div[3]/div[2]/div[7]/div[5]/button
เช็คราคารวมและจำนวนสินค้า
    Sleep    3 seconds
    Mouse Down    //*[@id="main"]/div/div[2]/div[3]/div[2]/div[2]/div/div[3]/div[2]
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[3]/div[2]/div[2]/div/div[3]/div[2]    ฿11,210
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[3]/div[2]/div[2]/div/div[2]/div[2]/div[6]    ฿50
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[3]/div[2]/div[2]/div/div[1]/div/div[2]/div/div[4]    1
เลือกการชำระเงิน
    Sleep    5 seconds
    Mouse Down    //*[@id="main"]/div/div[2]/div[3]/div[4]/div[1]/div/div[1]/div[2]/span[3]/button
    Click Element    //*[@id="main"]/div/div[2]/div[3]/div[4]/div[1]/div/div[1]/div[2]/span[3]/button
    Wait Until Page Contains    ธนาคารกรุงไทย
    Sleep    3 seconds
    Mouse Down    //*[@id="main"]/div/div[2]/div[3]/div[4]/div[1]/div/div[2]/div[3]/div[2]/div/div/div[2]/div/div/div[2]/div[1]
    Wait Until Page Contains    ธนาคารกรุงเทพ
    Wait Until Page Contains    ธนาคารกรุงไทย
    Wait Until Page Contains    ธนาคารไทยพาณิชย์
    Wait Until Page Contains    ธนาคารกสิกรไทย
    Wait Until Page Contains    ธนาคารกรุงศรี
    Click Element   //*[@id="main"]/div/div[2]/div[3]/div[4]/div[1]/div/div[2]/div[1]/div[2]/div[2]/div/div[1]/div/div



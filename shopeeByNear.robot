*** Settings ***
Resource    shopeeByNear-keywords.robot
Library    SeleniumLibrary
Test Setup    เปิดโครมเข้าไปที่ shopee
Test Template    ซื้อของด้วย shopee

*** Test Cases ***
ซื้อของด้วย shopee    0980159795    Near280741


*** Settings ***
Documentation       Pottery Barn API Sanity Test Suite
Resource            ../Resource.txt


*** Test Cases ***
Get All Available Currencies
    Get    https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies.json    expected_status=200

Get Currency List with EUR as Base Currency
    Get    https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/eur.json    expected_status=200

Get Currency Value for EUR to JPY
    Get    https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/eur/jpy.json    expected_status=200

Get Currency Value for EUR to XYZ
    Get    https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/eur/xyz.json    expected_status=200

Get Currency Value for EUR to USD
    Get    https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/eur/usd.json    expected_status=200
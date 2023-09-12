*** Settings ***
Resource    ../base.resource

*** Keywords ***

Dado que escolha o item
    [Arguments]    ${Nome_Item}
    Wait Until Element Contains      ${Title_Inventory}    Products
    Wait Until Element Is Visible    //*[@id="item_4_title_link"]//*[contains(text(), '${Nome_Item}')]
    Click Element                    ${Click_Product}
    Wait Until Element Is Visible    //*[@class="btn btn_secondary btn_small btn_inventory"][contains(.,'Remove')]
Quando clico no carinho de compras
    Wait Until Element Is Visible    ${Shopping_Cart}
    Click Element                    ${Shopping_Cart}

E verifico os dados do item no carrinho
    Location Should Be              https://www.saucedemo.com/cart.html
    Wait Until Element Contains    ${Title_Cart}    Your Cart
    Wait Until Element Contains    ${Title_Item_Name}    Sauce Labs Backpack
    Wait Until Element Contains    ${Title_Item_Price}   29.99
Quando clico em CheckOut
    Click Element                  ${CheckOut}
E insiro os dados de compra
    Location Should Be             https://www.saucedemo.com/checkout-step-one.html
    Wait Until Element Contains    ${Title_ChekOut}    Checkout: Your Information
    Input Text                     ${First_Name}    ${Faker_FirstName}
    Input Text                     ${Last_Name}     ${Faker_LastName}
    Input Text                     ${Postal_Code}   ${Faker_PostalCode}
Quando clico em Continue
    Click Element                  ${Continue}
E verifico os dados da compra
    Location Should Be             https://www.saucedemo.com/checkout-step-two.html
    Wait Until Element Contains    ${Title_ChekOutOverview}    Checkout: Overview

Quando clico em Finalizar
    Click Element                  ${Finish}
Então a venda é feita com sucesso
    Wait Until Element Contains    //*[@class="title"]    Checkout: Complete!
    Wait Until Element Contains    //*[@class="complete-header"]    Thank you for your order!
    Tirar Screenshot  ThankYouForYourOrder.png
*** Settings ***
Documentation       Arquivo com as Variaveis da tela de Inventário

Resource    ../base.resource

*** Variables ***

${Logo_Inventory}              //*[@class="app_logo"]
${Title_Inventory}             //*[@class="title"]
${Click_Product}               (//*[@class="btn btn_primary btn_small btn_inventory"])[1]
${Shopping_Cart}               //*[@id="shopping_cart_container"][contains(.,'1')]

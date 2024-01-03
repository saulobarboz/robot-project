*** Settings ***
Documentation       Arquivo com as Variaveis da tela de Inventário

Resource    ../base.resource

*** Variables ***

${Logo_Inventory}              //*[@class="app_logo"]
${Title_Inventory}             //*[@class="title"]
${Click_Product}               //*[@id="add-to-cart-sauce-labs-backpack"]
${Shopping_Cart}               //*[@id="shopping_cart_container"][contains(.,'1')]

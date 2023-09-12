*** Settings ***
Documentation       Arquivo com as Variaveis da tela do carrinho

Resource    ../base.resource

*** Variables ***

${Title_Cart}                  //*[@class="title"]
${Title_Item_Name}             (//*[@class="inventory_item_name"])[1]
${Title_Item_Price}            //*[@class="inventory_item_price"]
${CheckOut}                    //*[@id="checkout"]
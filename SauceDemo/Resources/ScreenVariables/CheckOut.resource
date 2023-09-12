*** Settings ***
Documentation       Arquivo com as Variaveis da tela do checkout

Resource    ../base.resource

*** Variables ***

${Title_ChekOut}               //*[@class="title"]
${First_Name}                  //*[@id="first-name"]
${Last_Name}                   //*[@id="last-name"]
${Postal_Code}                 //*[@id="postal-code"]
${Continue}                    //*[@id="continue"]
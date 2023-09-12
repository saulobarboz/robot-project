*** Settings ***
Documentation       Arquivo com as Variaveis da tela de Login

Resource    ../base.resource

*** Variables ***

${logo}              //*[@class="login_logo"]
${Username}          //*[@id="user-name"]
${Password}          //*[@id="password"]
${Click_Login}       //*[@id="login-button"]
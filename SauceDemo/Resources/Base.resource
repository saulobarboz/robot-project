*** Settings ***
Documentation       Arquivo base do projeto

Library             SeleniumLibrary
Library             FakerLibrary      locale=pt_BR
Library             Factories/Users.py


Resource            ../Resources/Hooks/Hooks.resource
Resource            ../Resources/Keywords/_Index.resource
Resource            ../Resources/ScreenVariables/_Index.resource
Resource            ../Resources/Shared/Faker.resource



*** Variables ***

${BROWSER}        chrome
${Base_Url_SauceDemo}        https://www.saucedemo.com/
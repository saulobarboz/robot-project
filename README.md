# Projeto de Automação Front End com Robot Framework #
## Robot Framework
O [Robot Framework](https://robotframework.org/) é um framework baseado em Python, que permite usar abordagens keyword-driven, data-driven e/ou behaviour-driven (BDD). Possui sintaxe de dados tabular fácil de usar e permite que usuários utilizem e criem bibliotecas em Python ou Java.

## Estrutura de Pasta

| Pasta             | Descrição                                                           |
| ----------------- | ----------------------------------------------------------------    |
| Logs              | Contem os arquivos com os logs gerados dos resultados dos testes    |
| Resources         | Contem os arquivos com as keywords/locators e libraries dos testes  |
| Screenshots       | Contem as imagens dos testes                                        |
| Shared            | Contem os arquivos de Faker                                         |
| Tests             | Contem os arquivos com a escrita dos Testes                         |

## Bibliotecas Usadas

| Biblioteca        | Descrição                                                                 |
| ----------------- | --------------------------------------------------------------------------|
| Selenium Library  | SeleniumLibrary é uma biblioteca de teste da web para Robot Framework.    |
| Faker Library     | Faker é uma biblioteca de automação de dados fictícios.                   |
| [Users.py](/SauceDemo/Resources/Factories/Users.py)               | Foi criada um biblioteca em Python onde extrai os dados de login do user  |

## Geração de Logs

| Script            | Descrição                                                                                                                                  |
| ----------------- | -------------------------------------------------------------------------------------------------------------------------------------------|
| Script em Bash    | Foi criado um Scipt em bash com a linha de comando da pasta do teste com escolha por numeros. [ScriptBash.sh](./SauceDemo/ScriptBash.sh)   |




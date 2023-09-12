*** Settings ***
Documentation       Teste de Registro no "Swag Labs"

Resource            ../Resources/Base.resource

Suite Setup     Run Keywords      Iniciar Sessão
...                               Dados para CheckOut
Suite Teardown    Fechar Browser


*** Test Cases ***

Caso de Teste 01: Compra no Site do "Swag Labs"
    [Documentation]
    [Tags]
    &{PERFIL}    Factory User    standard_user
    Login no Site do Swag Lab    ${PERFIL}
    Dado que escolha o item    Sauce Labs Backpack
    Quando clico no carinho de compras
    E verifico os dados do item no carrinho
    Quando clico em CheckOut
    E insiro os dados de compra
    Quando clico em Continue
    E verifico os dados da compra
    Quando clico em Finalizar
    Então a venda é feita com sucesso

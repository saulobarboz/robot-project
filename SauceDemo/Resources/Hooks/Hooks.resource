*** Settings ***
Documentation       Arquivo de hooks (Keywords em comuns)

Resource            ../base.resource


*** Keywords ***
Iniciar Sessão
    [Documentation]    Abre o Browser
    Open Browser
    ...    about:blank
    ...    ${BROWSER}
    ...    options=add_argument("lang=pt_BR");add_argument("--ignore-certificate-errors");add_argument("--kiosk-printing");add_experimental_option("excludeSwitches", ["enable-logging"]);add_argument("--start-maximized");add_argument("--start-maximized")
    Set Selenium Speed    0.3


Fechar Browser
    [Documentation]    Fecha todos os Browsers
    Close All Browsers

Login no Site do Swag Lab
    [Arguments]    ${PERFIL}
    Go To    ${Base_Url_SauceDemo}
    Wait Until Element Is Visible    ${logo}    5
    Wait Until Element Contains      ${logo}    Swag Labs    10
    Input Text    ${Username}    ${PERFIL}[login]    clear=true
    Input Text    ${Password}    ${PERFIL}[password]    clear=true
    Click Element    ${Click_Login}
    Location Should Be        https://www.saucedemo.com/inventory.html

Tirar Screenshot
    [Documentation]    Aponta a pasta de Screenshots e Captura a tela
    [Arguments]        ${name_print}
    Set Screenshot Directory    ./Screenshots/CompraSucesso
    Capture Page Screenshot   ${name_print}
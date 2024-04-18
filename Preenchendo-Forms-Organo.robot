*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${NameElement}    form-nome
${CargoElement}    form-cargo
${ImageElement}    form-imagem
${ListaSuspensa}    lista-suspensa
${ItemElement}    //option[contains(.,'Programação')]
${ButtonElement}    form-botao

*** Test Cases ***
Abrir navegador e acessar site do organo

    Open Browser    url=http://localhost:3000/    browser=Chrome
    Maximize Browser Window
    Input Text    locator=${NameElement}   text=Vitor
    Input Text    locator=${CargoElement}        text=Desenvolvedor
    Input Text    locator=${ImageElement}    text=Imagem teste
    Click Element    locator=class:${ListaSuspensa}
    Click Element    locator=${ItemElement}
    Sleep    2s
    Click Button    locator=${ButtonElement}
    Element Should Be Visible    locator=class:colaborador
    Sleep    time_=10s
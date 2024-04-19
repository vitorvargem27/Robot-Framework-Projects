*** Settings ***
Library     SeleniumLibrary
Resource    keywords_setup.robot
Resource    variaveis_setup.robot
Test Setup    Acessar o navegador e o formulário e maximizar a tela

*** Keywords ***

Preencher formulário
    Input Text       ${OrganoNameElement}   text=Vitor
    Input Text       ${OrganoCargoElement}        text=Desenvolvedor
    Input Text       ${OrganoImageElement}    text=Imagem teste
    Click Element    class:${OrganoListaSuspensa}
    Click Element    ${OrganoItemElement}
    Sleep    2s

Clicar no botão de criar card
    Click Button    ${OrganoButtonElement}

Conferir se o Card foi criado
    Element Should Be Visible    class:colaborador
    Sleep    time_=10s

*** Test Cases ***
Abrir navegador e responder formulário do organo e vendo o card sendo criado
    Preencher formulário
    Clicar no botão de criar card
    Conferir se o Card foi criado

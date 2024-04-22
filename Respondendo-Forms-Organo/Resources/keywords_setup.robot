*** Settings ***
Library    SeleniumLibrary
Resource    variaveis_setup.robot

*** Keywords ***
Acessar o navegador e o formulário Organo e maximizar a tela
    Open Browser    url=http://localhost:3000/    browser=Chrome
    Maximize Browser Window

Clicar no botão criar card
    Click Button    ${OrganoButtonElement}
O Sistema deve apresentar sistema de campo obrigatório
    Element Should Be Visible    ${OrganoNameErrorMessage}
    Element Should Be Visible    ${OrganoCargoErrorMessage}
    Element Should Be Visible    ${OrganoTimeErrorMessage}
    Sleep    5s

Preencher formulário
    ${FakerName}     
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

Identificar 3 Cards no time esperado
    FOR    ${counter}    IN RANGE    0    2
        Preencher formulário
        Clicar no botão de criar card 
        
    END

Verificar se é possível criar mais de um card de uma vez
    Identificar 3 Cards no time esperado
    
    







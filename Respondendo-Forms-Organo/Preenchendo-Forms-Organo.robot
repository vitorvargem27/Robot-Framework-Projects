*** Settings ***
Library     SeleniumLibrary
Resource    ./Resources/keywords_setup.robot
Resource    ./Resources/variaveis_setup.robot
Resource    Preenchendo-Form-Incompleto.robot
Test Setup    Acessar o navegador e o formulário Organo e maximizar a tela

*** Test Cases ***
Abrir navegador e responder formulário do organo e vendo o card sendo criado
    Preencher formulário
    Clicar no botão de criar card
    Conferir se o Card foi criado
    Verificar se é possível criar mais de um card de uma vez


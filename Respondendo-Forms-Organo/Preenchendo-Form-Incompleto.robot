*** Settings ***
Library       SeleniumLibrary
Resource      ./Resources/variaveis_setup.robot
Resource      ./Resources/keywords_setup.robot
Test Setup    Acessar o navegador e o formulário Organo e maximizar a tela

*** Test Cases ***
Verificar se o campo obrigatório não for preenchido, exibe a mensagem
    Clicar no botão criar card
    O Sistema deve apresentar sistema de campo obrigatório




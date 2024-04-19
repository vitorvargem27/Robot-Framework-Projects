*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${OrganoURL}    http://localhost:3000/
${OrganoNameElement}    form-nome
${OrganoCargoElement}    form-cargo
${OrganoImageElement}    form-imagem
${OrganoListaSuspensa}    lista-suspensa
${OrganoItemElement}    //option[contains(.,'Programação')]
${OrganoButtonElement}    form-botao
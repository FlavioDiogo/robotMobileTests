*** Settings ***
Resource        ../resources/base.robot
Resource        ../resources/helpers.robot

Test Setup      Open Session
Test Teardown   Close Session

*** Test Cases ***
Ordenar produto por Ordem Decrescente de valor
    [TAGS]  orderProduct
    Order product by Price - Descending

Adicionar o produto Backpack no carrinho
    [TAGS]  addProduct
    Add Product

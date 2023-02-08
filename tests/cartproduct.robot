*** Settings ***
Resource        ../resources/base.robot
Resource        ../resources/helpers.robot

Test Setup      Open Session
Test Teardown   Close Session

*** Test Case ***
Ordenar produto por Ordem Decrescente de valor
    [TAGS]  orderProduct
    Order product by Price - Descending

Adiconar o produto BackPack no carrinho
    [TAGS]  addProduct
    Add Product

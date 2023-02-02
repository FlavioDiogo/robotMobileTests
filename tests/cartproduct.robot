*** Settings ***
Resource        ../resources/base.robot
Resource        ../resources/helpers.robot

Test Setup      Open Session
Test Teardown   Close Session

*** Test Case ***
Adicionar o produto Code Smell no carrinho
    [TAGS]  addProduct
    Go to Product Page
    Add Product

Remover o produto Code Smell do carrinho
    [TAGS]  removeProduct
    Go to Product Page
    Add Product 
    Remove Product   



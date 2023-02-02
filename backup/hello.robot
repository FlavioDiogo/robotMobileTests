*** Settings ***
Library     hello.py

*** Test Case ***
Deve retornar msg
    ${resultado}=   Hello Robot     Flavio
    Should Be Equal     ${resultado}    Ola, Flavio.
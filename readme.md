*Desafio Renner API*
Testes de Usuario através da API https://reqres.in/api/users
Automatizado os testes:
Cadastro de usuario
Consulta de usuario
Consulta lista de usuario
Update de usuario

*Com as seguintes tecnologias*
Java
Cucumber
RestAssured
JUnit
Maven

*Motivo da escolha do cucumber*
Pelos testes terem as requisições parecidas
Foi identificado que poderia reutilizar os métodos criados
O qual é um dos pontos fortes do Cucumber+gherkin

*RestUtils*
Uma classe criada para utilização dos métodos comuns do RestAssured
Facilitando o uso de diversos métodos

*UsersSteps*
Classe que contém os passos que devem ser executados
Nele estão os métodos que foram gerados pelo cucumber*

*RunnerTest*
Classe responsável para executar os testes
É uma classe com execução JUnit
Podendo utilizar tags criadas para direcionar a sua execução



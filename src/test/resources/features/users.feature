#language:pt
  @users
  Funcionalidade: Users

    Cenario: Cadastro de usuario
      Dado que sejam preenchidos os valores de users com
        | email    | wilsoncaval@teste.com |
        | password | wilson123             |
      Quando que seja realizado o POST do Users
      Entao o sistema devolve o status 201
      E valido que o campo "email" retornou o valor "wilsoncaval@teste.com"
      E valido que o campo "password" retornou o valor "wilson123"

    Cenario: Consulta de usuario
      Dado que seja utilizado o id "1"
      Quando que seja realizado o Get do Users
      Entao o sistema devolve o status 200
      E valido que o campo "data.id" retornou o valor 1
      E valido que o campo "data.email" retornou o valor "george.bluth@reqres.in"
      E valido que o campo "data.first_name" retornou o valor "George"
      E valido que o campo "data.last_name" retornou o valor "Bluth"

    Cenario: Consulta lista de usuario
      Quando que seja realizado o Get do Users
      Entao o sistema devolve o status 200
      E valido que o campo "data[0].id" retornou o valor 1
      E valido que o campo "data[0].email" retornou o valor "george.bluth@reqres.in"
      E valido que o campo "data[0].first_name" retornou o valor "George"
      E valido que o campo "data[0].last_name" retornou o valor "Bluth"
      E valido que o campo "data[1].id" retornou o valor 2
      E valido que o campo "data[1].email" retornou o valor "janet.weaver@reqres.in"
      E valido que o campo "data[1].first_name" retornou o valor "Janet"
      E valido que o campo "data[1].last_name" retornou o valor "Weaver"

    Cenario: Update de usuario
      Dado que sejam preenchidos os valores de users com
        | email    | wilsoncaval@teste.com |
        | password | wilson123                |
      Quando que seja realizado o PATCH do Users com o id 1
      Entao o sistema devolve o status 200
      E valido que o campo "email" retornou o valor "wilsoncaval@teste.com"
      E valido que o campo "password" retornou o valor "wilson123"
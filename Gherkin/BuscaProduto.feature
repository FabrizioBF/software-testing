# language: pt-br

Funcionalidade: Busca por produto
  O usuário do sistema precisa realizar busca por produto no site

Cenário: Busca por produto existente
  Given o usuário está na página inicial
  When o usuário pesquisa por "notebook"
  Then o sistema deve exibir uma lista de notebooks

Cenário: Busca por produto inexistente
  Given o usuário está na página inicial
  When o usuário pesquisa por "produtoInexistente"
  Then o sistema deve exibir a mensagem "Nenhum resultado encontrado"
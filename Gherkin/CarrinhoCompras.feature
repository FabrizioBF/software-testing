# language: pt-br

Funcionalidade: Autenticação
  O usuário do sistema precisa adicionar produto ao carrinho

Cenário: Adicionar produto ao carrinho
  Given o usuário está na página do produto "Smartphone X"
  When o usuário clica em "Adicionar ao carrinho"
  Then o produto deve ser adicionado ao carrinho

Cenário: Remover produto do carrinho
  Given o usuário tem o produto "Smartphone X" no carrinho
  When o usuário clica em "Remover"
  Then o produto deve ser removido do carrinho

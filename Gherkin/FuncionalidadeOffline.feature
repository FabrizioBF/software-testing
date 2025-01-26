# language: pt-br

Funcionalidade: Acessar funcionalidade offline
  O usuário do sistema acessa funcionalidade offline na página

Cenário: Acessar funcionalidade offline
  Given o usuário está offline
  When tenta acessar "Histórico de compras"
  Then o sistema deve exibir "Recurso não disponível offline"

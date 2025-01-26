# language: pt-br

Funcionalidade: Logout
  O usuário do sistema realiza o logout bem-sucedido

Cenário: Usuário realiza logout
  Given o usuário está logado no sistema
  When o usuário clica em "Sair"
  Then o sistema deve redirecionar para a página de login

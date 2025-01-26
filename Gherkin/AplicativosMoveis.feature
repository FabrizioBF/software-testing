# language: pt-br

Funcionalidade: Notificações push ativadas
  O usuário do sistema ativa notificações

Cenário: Ativar notificações push
  Given o usuário está logado no aplicativo
  When o usuário habilita as notificações push
  Then o sistema deve exibir "Notificações ativadas com sucesso"

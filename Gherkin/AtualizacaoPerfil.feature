# language: pt-br

Funcionalidade: Atualização de dados do usuário
  O usuário do sistema realiza a atualização dos seus dados

Cenário: Atualizar informações do perfil
  Given o usuário está na página de configurações
  When o usuário altera "Nome" para "Novo Nome"
  And clica em "Salvar"
  Then o sistema deve exibir a mensagem "Perfil atualizado com sucesso"

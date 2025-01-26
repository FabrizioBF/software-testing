# language: pt-br

Funcionalidade: Cadastro com dados válidos
  O usuário do sistema precisa realizar o seu cadastro no site

Cenário: Cadastro de novo usuário
  Given o usuário está na página de cadastro
  When o usuário preenche todos os campos obrigatórios
  And clica em "Registrar"
  Then o sistema deve exibir a mensagem "Cadastro realizado com sucesso"

Cenário: Cadastro com email existente
  Given o usuário está na página de cadastro
  When o usuário insere "email@exemplo.com" já registrado
  Then o sistema deve exibir a mensagem "Email já cadastrado"

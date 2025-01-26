# language: pt-br

Funcionalidade: Autenticação
  O usuário do sistema precisa realizar o login no site

Cenário: Login com credenciais válidas
  Given o usuário está na página de login
  When o usuário insere "usuario123" e "senha123"
  Then o sistema deve redirecionar para a página inicial

Cenário: Login com credenciais inválidas
  Given o usuário está na página de login
  When o usuário insere "usuario123" e "senhaErrada"
  Then o sistema deve exibir a mensagem "Credenciais inválidas"

Cenário: Solicitar recuperação de senha
  Given o usuário está na página de login
  And o usuário clica em "Esqueci minha senha"
  When o usuário insere "email@exemplo.com"
  Then o sistema deve enviar um email de recuperação
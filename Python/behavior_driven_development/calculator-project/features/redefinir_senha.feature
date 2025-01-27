Feature: Redefinir senha
 Scenario: Redefinir senha com sucesso
  Given o usuário acessa a página de redefinição de senha
  When ele insere um e-mail válido "usuario@teste.com"
  Then o sistema envia um link de redefinição para o e-mail

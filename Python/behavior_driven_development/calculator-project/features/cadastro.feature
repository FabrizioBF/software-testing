Feature: Cadastro com e-mail
  Scenario: Cadastro com e-mail duplicado
    Given o e-mail "email@teste.com" já está registrado
    When o usuário tenta se cadastrar com "email@teste.com"
    Then o sistema mostra "E-mail já registrado"
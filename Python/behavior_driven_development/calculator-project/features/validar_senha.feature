Feature: Validar senha
  Scenario: Login com senha incorreta
    Given o usuário tenta acessar a conta
    When insere a senha "errada"
    Then o sistema exibe "Senha incorreta"
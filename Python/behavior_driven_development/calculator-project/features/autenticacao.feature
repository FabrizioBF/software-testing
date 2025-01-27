# -- FILE: features/example.feature
Feature: Verificar autenticação do usuário
  Scenario: Usuário logado com sucesso
    Given o usuário acessou a aplicação
    When o usuário verifica seu estado de login
    Then o sistema deve confirmar que o usuário está logado

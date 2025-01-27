Feature: Logout do sistema
  Scenario: Logout bem-sucedido
    Given o usuário está logado
    When o usuário clica no botão de logout
    Then o sistema deve redirecionar para a página de login

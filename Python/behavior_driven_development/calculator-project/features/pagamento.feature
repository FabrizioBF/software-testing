Feature: Pagamento
  Scenario: Pagamento com cartão válido
    Given o usuário está na página de pagamento
    When o usuário insere os dados de um cartão válido
    Then o sistema confirma a transação

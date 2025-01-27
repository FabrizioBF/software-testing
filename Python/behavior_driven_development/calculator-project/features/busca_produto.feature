Feature: Busca de produtos
  Scenario: Encontrar produto válido
    Given o usuário está na página de busca
    When o usuário procura por "laptop"
    Then a lista de produtos deve conter "laptop"

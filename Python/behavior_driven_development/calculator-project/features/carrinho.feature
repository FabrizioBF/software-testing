Feature: Carrinho
  Scenario: Carrinho vazio
    Given o carrinho está vazio
    When o usuário tenta finalizar a compra
    Then o sistema deve exibir "Adicione produtos ao carrinho"

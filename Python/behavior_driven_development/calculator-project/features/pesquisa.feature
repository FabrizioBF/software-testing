Feature: Pesquisa
  Scenario: Busca sem resultados
    Given nenhum produto corresponde à busca
    When o usuário pesquisa por "xyz123"
    Then o sistema apresenta "Nenhum resultado encontrado"

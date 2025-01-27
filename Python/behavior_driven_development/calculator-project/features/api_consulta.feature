Feature: API de consulta
  Scenario: Consulta de recurso válido
    Given a API está ativa
    When uma requisição GET é feita para "/usuarios/1"
    Then a resposta deve conter o nome "João"

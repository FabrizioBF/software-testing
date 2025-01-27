Feature: Aplicar desconto
 Scenario: Aplicar cupom de desconto válido
   Given o carrinho contém itens
   When o usuário insere o cupom "DESCONTO10"
   Then o total deve ser reduzido em 10%

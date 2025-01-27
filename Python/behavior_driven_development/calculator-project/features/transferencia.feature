Feature: Transferência
 Scenario: Transferência bem-sucedida
   Given a conta origem tem R$ 500.00
   And a conta destino tem R$ 200.00
   When uma transferência de R$ 100.00 é realizada
   Then o saldo da conta origem deve ser R$ 400.00
   And o saldo da conta destino deve ser R$ 300.00

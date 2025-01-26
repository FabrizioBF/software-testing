# language: pt-br

Funcionalidade: Finalizar compra com cartão válido
  O usuário do sistema precisa finalizar a compra com cartão válido no site

Cenário: Finalizar compra com cartão válido
  Given o usuário está na página de pagamento
  When o usuário insere os dados do cartão "1234 5678 9012 3456"
  And clica em "Pagar"
  Then o sistema deve exibir a mensagem "Pagamento realizado com sucesso"

Cenário: Finalizar compra com cartão inválido
  Given o usuário está na página de pagamento
  When o usuário insere os dados do cartão "0000 0000 0000 0000"
  And clica em "Pagar"
  Then o sistema deve exibir a mensagem "Pagamento recusado"

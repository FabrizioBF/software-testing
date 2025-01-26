# language: pt-br

Funcionalidade: Consulta de dados via API
  O usuário do sistema realiza consulta de dados via API

Cenário: Consultar usuário via API
  Given a API está disponível
  When uma requisição GET é feita para "/usuarios/123"
  Then o sistema deve retornar o código 200
  And exibir os dados do usuário "123"

Cenário: Enviar dados inválidos via API
  Given a API está disponível
  When uma requisição POST com corpo inválido é enviada para "/usuarios"
  Then o sistema deve retornar o código 400
  And exibir a mensagem "Dados inválidos"

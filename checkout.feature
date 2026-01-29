Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:  
    Dado que estou na página de cadastro

Cenário: cadastro com dados válidos
Quando preencho o campo "Nome" com "Lucas"
E preencho o campo "Sobrenome" com "Andrade"
E preencho o campo "País" com "Brasil"
E preencho o campo "Endereço" com "Rua das Flores, 123"
E preencho o campo "Cidade" com "São Paulo"
E preencho o campo "CEP" com "01234-567"
E preencho o campo "Telefone" com "11912345678"
E preencho o campo "Email" com "lucas.andrade@email.com"
E clico em "Finalizar Cadastro"
Então devo ver uma mensagem de confirmação que diz "Cadastro realizado com sucesso"

Cenário: cadastro com dados inválidos
Quando preencho o campo "Nome" com ""
E preencho o campo "Sobrenome" com "Andrade"
E preencho o campo "País" com "Brasil"
E preencho o campo "Endereço" com "Rua das Flores, 123"
E preencho o campo "Cidade" com "São Paulo"
E preencho o campo "CEP" com "01234-567"
E preencho o campo "Telefone" com "11912345678"
E preencho o campo "Email" com "lucas.andrade@email.com"
E clico em "Finalizar Cadastro"
Então devo ver uma mensagem de erro que diz "Por favor, preencha todos os campos obrigatórios"

Cenário: cadastro com email inválido
Quando preencho o campo "Nome" com "Lucas"
E preencho o campo "Sobrenome" com "Andrade"
E preencho o campo "País" com "Brasil"
E preencho o campo "Endereço" com "Rua das Flores, 123"
E preencho o campo "Cidade" com "São Paulo"
E preencho o campo "CEP" com "01234-567"
E preencho o campo "Telefone" com "11912345678"
E preencho o campo "Email" com "lucas.andradeemail.com"
E clico em "Finalizar Cadastro"
Então devo ver uma mensagem de erro que diz "Email inválido"

Cenário: cadastro com campos vazios
Quando preencho o campo "Nome" com ""
E preencho o campo "Sobrenome" com ""
E preencho o campo "País" com ""
E preencho o campo "Endereço" com ""
E preencho o campo "Cidade" com ""
E preencho o campo "CEP" com ""
E preencho o campo "Telefone" com ""
E preencho o campo "Email" com ""
E clico em "Finalizar Cadastro"
Então devo ver uma mensagem de erro que diz "Por favor, preencha todos os campos obrigatórios"

Esquema do Cenário: cadastro com dados variados
|Nome   | Sobrenome | País    | Endereço            | Cidade         | CEP        | Telefone     | Email                     |
| Lucas | Andrade   | Brasil  | Rua das Flores, 123 | São Paulo      | 01234-567  | 11912345678  | lucas.andrade@email.com   |
| Ana   | Silva     | Brasil  | Av. Central, 456    | Rio de Janeiro | 23456-789  | 21987654321  | ana.silva@email.com       |
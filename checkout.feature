Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:  
    Dado que estou na página de cadastro

Cenário: cadastro com dados válidos
Quando preencho todos os campos obrigatórios com dados válidos
E clico em "Finalizar Cadastro"
Então devo ver uma mensagem de confirmação que diz "Cadastro realizado com sucesso"

Cenário: cadastro com dados inválidos
Quando preencho os campos obrigatórios
E preencho o campo "Telefone" com "11912AB678"
E clico em "Finalizar Cadastro"
Então devo ver uma mensagem de erro que diz "Por favor, preencha todos os campos obrigatórios corretamente"

Cenário: cadastro com email inválido
Quando preencho os campos obrigatórios
E preencho o campo "Email" com "lucas.andradeemail.com"
E clico em "Finalizar Cadastro"
Então devo ver uma mensagem de erro que diz "Email inválido"

Cenário: cadastro com campos vazios
Quando deixar de preencher algum campo obrigatório marcado com asterisco
E clico em "Finalizar Cadastro"
Então devo ver uma mensagem de erro que diz "Por favor, preencha todos os campos obrigatórios"

Esquema do Cenário: cadastro com dados variados
Quando preencho os campos obrigatórios com os seguintes dados:

| Nome  | Sobrenome | País    | Endereço            | Cidade         | CEP        | Telefone     | Email                     |
| Lucas | Andrade   | Brasil  | Rua das Flores, 123 | São Paulo      | 01234-567  | 11912345678  | lucas.andrade@email.com   | 
| Ana   | Silva     | Brasil  | Av. Central, 456    | Rio de Janeiro | 23456-789  | 21987654321  | ana.silva@email.com       |
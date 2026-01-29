# lenguage: pt

Funcionalidade: EBAC-Shop

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:  
    Dado que estou na página do produto 

Cenário: seleção de cor, tamanho e quantidade do produto
Quando escolho a cor "Preto"
E escolho o tamanho "M"
E escolho a quantidade "10"
E clico em "Adicionar ao carrinho"
Então o produto deve ser adicionado ao carrinho com as especificações escolhidas

Cenário: seleção de cor com dados inválidos
Quando escolho a cor "cromado"
E escolho o tamanho "M"
E escolho a quantidade "10"
E clico em "Adicionar ao carrinho"
Então o produto deve apresentar uma mensagem que diz "Cor indisponível"

Cenário: seleção de tamanho com dados inválidos
Quando escolho a cor "Preto"
E escolho o tamanho "EXG"
E escolho a quantidade "3"
E clico em "Adicionar ao carrinho"
Então o produto deve apresentar uma mensagem que diz "Tamanho indisponível"

Cenário: seleção de quantidade abaixo do permitido
Quando escolho a cor "Preto"
E escolho o tamanho "M"
E escolho a quantidade "9"
E clico em "Adicionar ao carrinho"
Então o produto deve apresentar uma mensagem que diz "Quantidade inválida"

Cenário: seleção de quantidade acima do permitido
Quando escolho a cor "Preto"
E escolho o tamanho "M"
E escolho a quantidade "11"
E clico em "Adicionar ao carrinho"
Então o produto deve apresentar uma mensagem que diz "Quantidade inválida"

Cenário: Clicar no botão limpar
Quando escolho a cor "Preto"
E escolho o tamanho "M"
E escolho a quantidade "10"
E clico em "Limpar"
Então os campos devem ser limpos
E o produto não deve ser adicionado ao carrinho

Esquema do Cenário: seleção de cor, tamanho e quantidade do produto com dados variados
|cor       | tamanho | quantidade |
| Preto    | M       | 10         |
| Branco   | G       | 10         |
| Vermelho | P       | 10         |
| Azul     | M       | 10         |
| Verde    | G       | 10         |
# lenguage: pt

Funcionalidade: EBAC-Shop

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:  
    Dado que estou na página do produto 

Cenário: seleção de cor, tamanho e quantidade do produto
Quando escolho a cor "Preto", o tamanho "M" e a quantidade "10"
E clico em "Adicionar ao carrinho"
Então o produto deve ser adicionado ao carrinho com as especificações escolhidas

Cenário: seleção de cor com dados inválidos
Quando escolho a cor "cromado", o tamanho "M" e a quantidade "10"
E clico em "Adicionar ao carrinho"
Então o produto deve apresentar uma mensagem que diz "Cor indisponível"

Cenário: seleção de tamanho com dados inválidos
Quando escolho a cor "Preto", o tamanho "EXG" e a quantidade "10"
E clico em "Adicionar ao carrinho"
Então o produto deve apresentar uma mensagem que diz "Tamanho indisponível"

Cenário: seleção de quantidade abaixo do permitido
Quando escolho a cor "Preto", o tamanho "M" e a quantidade "5"
E clico em "Adicionar ao carrinho"
Então o produto deve apresentar uma mensagem que diz "Quantidade inválida"

Cenário: seleção de quantidade acima do permitido
Quando escolho a cor "Preto", o tamanho "M" e a quantidade "15"
E clico em "Adicionar ao carrinho"
Então o produto deve apresentar uma mensagem que diz "Quantidade inválida"

Cenário: Clicar no botão limpar
Quando escolho a cor "Preto", o tamanho "M" e a quantidade "10"
E clico em "Limpar"
Então os campos devem ser limpos
E o produto não deve ser adicionado ao carrinho

Esquema do Cenário: seleção de cor, tamanho e quantidade do produto com dados variados
Quando escolho a cor "<cor>", o tamanho "<tamanho>" e a quantidade "<quantidade>"
E clico em "Adicionar ao carrinho"
Então o produto deve apresentar uma mensagem que diz "<mensagem>"

|cor       | tamanho | quantidade | mensagem
| Preto    | M       | 10         | Produto adicionado ao carrinho com sucesso
| Branco   | G       | 5          | Quantidade inválida
| Vermelho | P       | 15         | Quantidade inválida
| Cromado  | M       | 10         | Cor indisponível
| Verde    | EXG     | 10         | Tamanho indisponível
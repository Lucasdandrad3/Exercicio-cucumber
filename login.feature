#lenguage - pt-BR
Funcionalidade: login na plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto:
  Dado que eu sou um cliente registrado da EBAC-SHOP

Cenário: Fazer login com sucesso na plataforma
  Dado que eu acesso a página de login da EBAC-SHOP
  Quando eu preencho o campo "username" com "teste2024"
  E preencho o campo "password" com "SenhaSegura123"
  E clico no botão de "login"
  Então eu devo ver a mensagem de boas-vindas "Bem-vindo, teste2024!"

Cenário: Tentar login com senha incorreta
  Dado que eu acesso a página de login da EBAC-SHOP
  Quando eu preencho o campo "username" com "teste2024"
  E preencho o campo "password" com "SenhaErrada"
  E clico no botão de "login"
  Então eu devo ver a mensagem de erro "Senha incorreta. Tente novamente."

Cenário: Tentar login com usuário inexistente
  Dado que eu acesso a página de login da EBAC-SHOP
  Quando eu preencho o campo "username" com "usuarioInexistente"
  E preencho o campo "password" com "QualquerSenha"
  E clico no botão de "login"
  Então eu devo ver a mensagem de erro "Usuário não encontrado. Por favor, registre-se."

Esquema do Cenário: Fazer login com múltiplos conjuntos de credenciais
    Exemplos:
    | email                  | senha            |
    | teste2024@email.com    | SenhaSegura123   |
    | teste2025@email.com    | OutraSenha456    |
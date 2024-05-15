#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC SHOP
Quero configurar meu produto de acordo com meu tamanho e cor
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página da EBAC SHOP como cliente

Cenário: Configuração de produto por tamanho e cor
Quando eu selecionar um produto no catálogo do EBAC SHOP
E selecionar tamanho e cor
Então deve exibir opção de desfazer as opções selecionas 

Cenário: Configuração por quantidade inválida de produtos
Quando eu selecionar um produto no catálogo do EBAC SHOP
E adiconar mais de 11 itens  
Então deve exibir mensagem um alerta: "Número máximo de produtos por venda excedido. Permitido somente 10 itens por transação"

Cenário: Configuração por quantidade válida de produtos
Quando eu selecionar um produto no catálogo do EBAC SHOP
E adiconar 10 itens ou menos 
Então deve exibir uma mensagem: "Gostaria de inserir produtos no carrinho?"
#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC SHOP
Quero concluir meu cadastro   
Para finalizar minha compra

Contexto:
Dado que eu acesse a página de Checkout da EBAC SHOP como cliente

Cenário: Cadastro válido
Quando eu concluir meu cadastro com todas as informações obrigatórias marcadas com asterisco
E finalizar minha compra 
Então deve exibir as opções para conclusão de pedido

Cenário: Cadastro inválido
Quando eu concluir meu cadastro com todas as informações, exceto as obrigatórias marcadas com asterisco
E finalizar minha compra
Então deve exibir uma mensagem de alerta "Itens marcados com asterisco são obrigatórios!"

Cenário: Cadastro com e-mail inválido
Quando eu digitar o e-mail "tabatagmail.com.br"
E finalizar minha compra 
Então deve exibir uma mensagem de alerta "E-mail com formato inválido"
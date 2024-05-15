            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC SHOP
            Quero fazer o login/autenticação na plataforma
            Para visualizar meus pedidos


            Contexto:
            Dado que eu acesse a página de login/autenticação da EBAC SHOP como cliente

            Cenário: Autenticação válida
            Quando eu digitar o usuário "anselmo@gmail.com.br"
            E a senha "senha123"
            Então deve ser direcionado para a tela de checkout e exibir uma mensagem de boas vindas "Olá, Anselmo"

            Cenário: Autenticação inválida
            Quando eu digitar o usuário "tabata@gmail.com.br"
            E a senha "senha124"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Usuário não cadastrado
            Quando eu digitar o usuário "bruno@gmail.com.br"
            E a senha "242424"
            Então deve exibir uma mensagem de alerta com link para cadastro "Usuário não cadastrado. Cadastrar-se?"

            Esquema do Cenário: autenticar multiplos usuários
            Quando eu digitar <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuário                | senha      | mensagem                                |
            | "anselmo@gmail.com.br" | "senha123" | "Olá, Anselmo"                          |
            | "bruno@gmail.com.br"   | "242424"   | "Usuário não cadastrado. Cadastrar-se?" |
            | "tabata@gmail.com.br"  | "senha124" | "Usuário ou senha inválidos"            |

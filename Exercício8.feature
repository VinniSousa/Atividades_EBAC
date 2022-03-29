#US-0001

Feature: Configurar Produto
    Como cliente EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Scenario Outline: Adicionar no carrinho
        Given que eu selecione o produto pelo tamanho, cor e escolher a <quantidade>
        When clicar em Inserir no carrinho
        Then deve exibir a seguinte mensagem <mensagem>

    Example: Tabela
            | quantidade      | mensagem                                   |
            | "quantidade<10" | "O produto foi adicionado no carrinho"     |
            | "quantidade=10" | "O produto foi adicionado no carrinho"     |
            | "quantidade>10" | "A quantidade excede o máximo de 10 itens" |

    Example: Tabela Valores
            | quantidade | mensagem                                   |
            | "1"        | "O produto foi adicionado no carrinho"     |
            | "2"        | "O produto foi adicionado no carrinho"     |
            | "3"        | "O produto foi adicionado no carrinho"     |
            | "4"        | "O produto foi adicionado no carrinho"     |
            | "5"        | "O produto foi adicionado no carrinho"     |
            | "6"        | "O produto foi adicionado no carrinho"     |
            | "7"        | "O produto foi adicionado no carrinho"     |
            | "8"        | "O produto foi adicionado no carrinho"     |
            | "9"        | "O produto foi adicionado no carrinho"     |
            | "10"       | "O produto foi adicionado no carrinho"     |
            | "11"       | "A quantidade excede o máximo de 10 itens" |

    Scenario: Limpar carrinho
        Given que eu já tenha selecionado alguns campos obrigatórios como tamanho e cor
        When eu desejar limpar os campos já preenchidos
        Then a interface deve voltar no estado original

#US-0002

Feature: Login na plataforma
    Como cliente EBAC-SHOP
    Quero fazer login (autenticação) na plataforma
    Para visualizar meus pedidos

    Background: Acesso portal
        Given que eu acesse a opção para visualizar os meus pedidos no portal

    Scenario: Login válido
        When preencher com o e-mail "ebac@login.com.br"
        E senha "P0rt4l@2022"
        Then deve retornar a seguinte mensagem "Login realizado com sucesso"
    E direcionar para a página com os pedidos

    Scenario: Usuário não cadastrado
        When Preencher com o e-mail "errado@teste.com.br"
        E senha "ammauif7123"
        Then deve retornar a seguinte mensagem "Usuário não cadastrado na base de dados, deseja cadastrar?"

    Scenario: Login inválido
        When preencher com o e-mail "ebac@login.com.br"
        E senha "portal@2022"
        Then deve retornar a seguinte mensagem "Usuário ou senha inválidos"

#US-0003

Feature: Em andamento
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastrado
    Para finalizar minha compra

    Scenario Outline: Novo cadastro
        Given que eu quero realizar um cadastro para finalizar compra
        When eu prenncher os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <CEP>
        <telefone> e <email>
        Then deve retornar a seguinte a seguinte <mensagem>

    Example: Dados cadastrais
            | nome       | sobrenome  | pais     | endereco              | cidade     | CEP        | telefone    | email                | mensagem                                         |
            | "Vinicius" | "Sousa"    | "Brasil" | "Av.Candido de Abreu" | "Curitiba" | "80530000" | "992812721" | "ebac@login.com.br"  | "cadastro realizado com sucesso"                 |
            | "Vinicius" | "Sousa"    | "Brasil" | "Av.Candido de Abreu" | "Curitiba" | "80530000" | "992812721" | "teste@login.com.br" | "cadastro realizado com sucesso"                 |
            | "Sousa"    | "Vinicius" | "Brasil" | "Av.Candido de Abreu" | "Curitiba" | "80530000" | "992812721" | "ebac.login.com.br"  | "Campo de e-mail inválido, inserir email válido" |

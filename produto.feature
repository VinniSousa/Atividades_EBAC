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

    Scenario: Limpar carrinho
        Given que eu já tenha selecionado alguns campos obrigatórios como tamanho e cor
        When eu desejar limpar os campos já preenchidos
        Then a interface deve voltar no estado original
    
    Scenario: Preenchimento de campos
        Given que eu selecione um produto pela cor e quantidade
        When eu desejar concluir a compra
        Then deve exibir a seguinte mensagem "Um campo obrigatório não foi especificado"
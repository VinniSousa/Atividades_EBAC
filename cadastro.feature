#US-0003

Feature: Cadastro Portal
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

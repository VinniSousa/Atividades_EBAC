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
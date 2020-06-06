#language: pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catálogo Ninjaflix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha
    
    @login_ok
    Cenario: Acesso
        Quando faco login com "tony@stark.com" e "pwd123"
        Entao devo ser autenticado
        E devo ver "tony@stark.com" na area logada

    Cenario: Senha invalida
        Quando eu faco login com "tony@stark" e "1234"
        Entao nao devo ser autenticado
        E devo ver a mensagem de alerta "Usuário e/ou senha inválidos"

    Cenario: usuario nao existe
        Quando eu faco login com "lu@hotmail.com" e 'pwd123'
        Entao nao devo ser autenticado
        E devo ver a mensagme de alerta "Usuário e/ou senha inválidos"

    Cenario: Email nao informado
        Quando eu faco login com "" e "grfds"
        Entao nao devo ser autenticado
        E devo ver a mensagem de alerta "Cadê o email?"

    Cenario: Senha nao informado
        Quando eu faco login com "lu@hotmail.com" e ""
        Entao nao devo ser autenticado
        E devo ver a mensagem de alerta "Cadê a senha?"
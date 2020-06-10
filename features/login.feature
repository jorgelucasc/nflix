#language: pt

Funcionalidade: Login
Para que eu possa gerenciar os filmes do catálogo Ninjaflix
Sendo um usuário previamente cadastrado
Posso acessar o sistema com o meu email e senha

@login_ok
Cenario: Acesso
Quando eu faço login com "tony@stark.com" e "123456"
Então devo ser autenticado
E devo ver "Tony Stark" na area logada

@login_invalid
Cenario: Senha invalida
Quando eu faço login com "tony@stark.com" e "abc2412"
Então não devo ser autenticado
E devo ver a mensagem de alerta "Usuário e/ou senha inválidos"

Cenario: Usuario nao existe
Quando eu faço login com "404@yahoo.com" e "123456"
Então nao devo ser autenticado
E devo ver a mensagem de alerta "Usuário e/ou senha inválidos"

Cenario: Email não informado
Quando eu faço login com "" e "abc123"
Então não devo ser autenticado
E devo ver a mensagem "Opps. Cadê o email?"

Cenario: Senha não informada
Quando eu faço login com "teste@gmail.com" e ""
Então não devo ser autenticado
E devo ver a mensagem "Opps. Cadê a senha?"
#language: pt

Funcionalidade: Verificar inscritos canal do YT

    Como usuário
    Quero acessar o canal da D1 - Jornadas Digitais no YouTube
    Para verificar a quantidade de inscritos

Contexto: YouTube
    Dado que eu acesso o YouTube 

#Caso de Sucesso

Cenario: Acessa o canal

    Quando eu acesso o canal
    |canal|D1 - Jornadas Digitais|
    Então eu acesso a aba Sobre do canal
    E verifico a quantidade de inscritos 

#Fluxos Alternativos

Cenario: Acessa o canal errado

    Quando eu procuro o canal errado
    |errado|D2 - Jornais Digitais|
    Então eu devo ser redirecionada para a página principal

Cenario: Acessa a aba errada

    Quando eu acesso o canal
    |canal|D1 - Jornadas Digitais|
    Então eu acesso a aba errada do canal
    E devo ser redirecionada para a aba certa


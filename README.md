# spring-boot-cep

Um projeto de API em Spring Boot + JPA + Postgres que não apenas consulta CEPs e endereços mas cadastra e exclui

É necessário ter o banco postgres instalado bem como a senha definida como "123" (sem aspas) para o usuário "postgres", o usuário da conexão.

Antes de começar a usar o sistema, é necessário criar o banco e as tabelas com o script banco.sql

# Instruções de Uso

Considerando-se para todos os casos, o uso do programa Postman:

1. Cadastrar: Escolha o método POST e informe a URL como esta:
http://localhost:8082/api/cadastrarCEP
informando também no campo "body" os dados a serem cadastrados:
{
	"endereco":"Rua Xavier, 7788888",
	"cep": "8899902"
}

o novo ID será gerado automaticamente pela sequence do Postgres.

2. Consultar:

a) pelo CEP: http://localhost:8082/api/consultarEndereco/68098455 retornando o endereço correspondente.

b) pelo endereço: http://localhost:8082/api/consultarCEP/Rua Dr Joao Colin, 1317

retornando o CEP correspondente.
OBS: Note e considere os espaços no endereço.


3. Exclusão: Escolha o método DEL e informe a URL como esta
http://localhost:8082/api/excluirCEP/8899900
Retornará true, caso o elemento exista e a exclusão seja possível. E false, caso contrário.

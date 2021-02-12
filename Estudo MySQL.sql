/* Estudo de MySQL - Parte 1*/



	/* Criação de um banco de dados - 
		Por convenção e costume os códigos feitos para criação e manuseio de bancos de dados são em letras maiúscula.
		Sempre importante utilizar de nomes que irão te lembrar do que o banco criado é baseado , exemplo, se um banco foi feito para armazenar os clientes de uma empresa é de costume na hora de criar o banco utilizar do nome da empresa para criar o banco ou
			do que o banco se trata.
	
	*/
	
	CREATE DATABASE "NOME DO BANCO"; /* Comando utilizado para criar um banco de dados */
	
	/* Criação de tabelas 
		As tabelas são a parte principal de um banco de dados, é lá onde todos os dados que forem recolhidos serão armazenados, também por costume e convenção sempre utilize de nomes que irão te lembrar do que a tabela se trata.

	
		As tabelas possuim suas características e atributos como por exemplo, se sua tabela armazena valores de mercadorias é preciso nome da mercadoria, peso da mercadoria, quantidade da mercadoria (isso vai depender do modelo de negócio enviado para o responsável da criação das tabelas) e,
		todas suas características possuem seus tipos e especificações.
		
		Tipos de atributos:
			INT - Valores inteiros, ou seja, representam os números mais comuns (1, 2, 10, 125...)
			CHAR - Caractéres, ou seja, letras e palavras em geral (a, b, c, banco, dados )
			VARCHAR - Variáveis de caractéres, ou seja, também são letras e palavras em geral, porém sua alocação na memória é dinânimca assim se ajustando ao tamanho da entrada não armazenando espaços em branco.
			ENUM - Box Selection, o técnico do banco disponibiliza opções para o usuário em uma caixa selecionável.
			FLOAT - Valores com ponto flutuante, ou seja, números que possuem vírgulas.
			
			Entre outros diversos tipos.
	*/
	
	/* Demonstração dos tipos apresentados acima */
	
	CREATE TABLE "NOME DA TABELA" ( 
		NOME_MERCADORIA VARCHAR(30) /* Quantidade de letras que podem ser usadas de entrada */,
		SIGLA_DISTRIBUIDORA CHAR(3) /* Quantidade de letras que podem ser usadas de entrada */,
		TIPO_DE_MERCADORIA ENUM('RESIDENCIAL', 'COMERCIAL') /* Tipos de valores que podem ser selecionados */, 
		PRECO_MERCADORIA FLOAT(5,2)/* O primeiro valor do ( é o total de casas e o segundo valor é quantas casas serão após a vírgulas */,
		QUANTIDADE_MERCADORIA INT(10) /* Tamanho suportável pela atribuição */
	); 
	
	/* Além dos tipos das atribuições, as tabelas também possuem características e as mais importantes são:
	
		UNIQUE - Não poderá haver dado repetido na tabela.
		PRIMARY KEY - Utilizada para indicar para a tabela qual será o atributo que irá diferenciar os dados.
		FOREIGN KEY - Utilizada na criação de relações entre tabelas.
		AUTO_INCREMENT - Utilizado para incrementar um valor automaticamente de 1 em 1.
		NOT NULL - Indica que a entrada de dado não pode ser nula.
		
	*/
	
	/* Demonstração das características acima */
	
	CREATE TABLE "NOME DA TABELA" ( 
		ID_MERCADORIA INT PRIMARY KEY AUTO_INCREMENT,
		NOME_MERCADORIA VARCHAR(30) UNIQUE,
		SIGLA_DISTRIBUIDORA CHAR(3) NOT NULL,
		TIPO_DE_MERCADORIA ENUM('RESIDENCIAL', 'COMERCIAL') NOT NULL, 
		PRECO_MERCADORIA FLOAT(5,2) NOT NULL,
		QUANTIDADE_MERCADORIA INT(10) NOT NULL,
		ID_FORNECEDOR,
		FOREIGN KEY ID_FORNECEDOR REFERENCES "NOME DA TABELA" ("CHAVE PRIMARIA DA TABELA REFERENCIADA)
	); 
	
	/* .......... */
	
	
	
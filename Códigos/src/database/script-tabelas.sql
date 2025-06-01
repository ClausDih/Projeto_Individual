CREATE DATABASE projindiv;

USE projindiv;

CREATE TABLE Usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	senha CHAR(8) NOT NULL
);


CREATE TABLE Quiz (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(200) NOT NULL
);

CREATE TABLE Resultado (
	id INT AUTO_INCREMENT,
	fk_usuario INT,
	fk_quiz INT,
	fk_Trilhas INT,
	dataJogo DATE NOT NULL,
	pontos TINYINT NOT NULL,
	nivel VARCHAR(14) NOT NULL,
    Primary key (id, fk_usuario, fk_quiz, fk_Trilhas)
);

CREATE TABLE Trilhas (
	id INT PRIMARY KEY auto_increment,
	nome VARCHAR(50) NOT NULL,
	descricao VARCHAR(200) NOT NULL,
	cidade VARCHAR(50) NOT NULL,
    dificuldade varchar(45),
    nivelNumero INT
);

INSERT INTO Trilhas VALUES
	(default, 'Trilha da Pontinha', 'Percorre o Rio Grande, passando por antigas estruturas da São Paulo Railway e piscinas naturais', 'Paranapiacaba', 'facil', 0),
    (default, 'Trilha das Hortênsias', 'Caminho curto com inclinação leve, ideal para observar plantas ornamentais', 'Paranapiacaba', 'facil', 1),
    (default, 'Trilha dos Gravatás', 'Trilha sombreada por árvores altas, com presença de gravatás', 'Paranapiacaba', 'facil', 2),
    (default, 'Trilha do Mirante', 'Acesso ao mirante com vista panorâmica da Baixada Santista', 'Paranapiacaba', 'facil', 3),
	(default, 'Trilha do Silêncio', 'Caminho curto e plano com placas em braile, ideal para iniciantes e pessoas com mobilidade reduzida', 'São Paulo', 'facil', 4),
    (default, 'Trilha da Nascente do Ipiranga', 'Trilha suspensa entre árvores, com vista para a nascente do rio Ipiranga, em meio à Mata Atlântica urbana', 'São Paulo', 'facil', 5),
    (default, 'Trilha das Paineiras', 'Caminho tranquilo entre árvores centenárias, ideal para caminhadas leves', 'Núcleo Pedra Grande', 'facil', 6),
    (default, 'Trilha Maresias – Paúba', 'Trilha costeira entre duas praias famosas, com mirantes e trechos sombreados', 'Litoral Norte', 'facil', 7),
    (default, 'Trilha do Lago das Carpas', 'Percurso plano e arborizado, com vista para o lago, ideal para famílias e crianças', 'São Paulo', 'facil', 8),
    (default, 'Trilha da Janela do Céu (Parte Inicial)', 'Trecho leve com passarelas e mirantes até o acesso à Janela do Céu', 'Ibitipoca', 'facil', 9),
	(default, 'Trilha do Poço Formoso', 'Caminho curto até um poço natural cercado por vegetação nativa', 'Carrancas', 'facil', 10),
	(default, 'Trilha do Poço Azul', 'Trilha curta e acessível até um poço de águas cristalinas e azuladas', 'Nova Redenção', 'facil', 11),
	(default, 'Trilha da Pedra Redonda', 'Percurso suave com vista panorâmica da Serra da Mantiqueira', 'Monte Verde', 'facil', 12),
	(default, 'Trilha da Praia do Sono', 'Trilha costeira com terreno estável e mata atlântica até uma praia paradisíaca', 'Paraty', 'facil', 13),
	(default, 'Trilha da Cachoeira Véu da Noiva', 'Caminho plano até uma bela queda d’água, com boa estrutura de visitação', 'Parque Nacional da Serra dos Órgãos', 'facil', 14),
	(default, 'Trilha do Mirante da Janela', 'Caminhada leve com vista para formações rochosas de tirar o fôlego', 'Chapada dos Veadeiros', 'facil', 15),
    (default, 'Trilha do Mirante de Paranapiacaba', 'Caminho cercado pela Mata Atlântica, com vistas deslumbrantes do mirante', 'Paranapiacaba', 'media', 16),
    (default, 'Trilha Olho D’Água', 'Percurso curto e agradável dentro do Parque Natural Municipal Nascentes de Paranapiacaba', 'Paranapiacaba', 'media', 17),
    (default, 'Trilha do Poço Formoso', 'Leva a belas cachoeiras e paisagens típicas da Mata Atlântica', 'Paranapiacaba', 'media', 18),
    (default, 'Trilha do Poço das Moças', 'Trilha que leva a um poço de águas cristalinas, ideal para banho', 'Paranapiacaba', 'media', 19),
    (default, 'Paranapiacaba x Pedra Grande da Quatinga', 'Caminhada até a Pedra Grande, com vista panorâmica da região', 'Paranapiacaba', 'media', 20),    
    (default, 'Trilha da Cachoeira da Fumaça', 'Leva a uma cachoeira de 30 metros, com trechos escorregadios e íngremes', 'Paranapiacaba', 'media', 21),
    (default, 'Trilha da Cachoeira do Engordador', 'Caminho por mata fechada com acesso a três belas cachoeiras; percurso bem sinalizado', 'São Paulo', 'media', 22),
    (default, 'Trilha do Mirante (Curucutu)', 'Caminho com trechos de subida leve, terminando com vista panorâmica do litoral sul', 'Itanhaém', 'media', 23),
    (default, 'Trilha dos Macacos', 'Passa por mata atlântica e sobe até mirante com vista para o mar', 'São Sebastião', 'media', 24),
    (default, 'Trilha do Rio Betari', 'Caminho por floresta densa, cruzando rios e próximo a cavernas', 'Iporanga', 'media', 25),
    (default, 'Trilha dos Mirantes', 'Trilha com subidas suaves e mirantes naturais sobre a mata.', 'Mogi das Cruzes', 'media', 26),
    (default, 'Trilha do Pico do Baepi', 'Trilha íngreme com degraus e raízes; vista deslumbrante do arquipélago no topo', 'Ilhabela', 'dificil', 27),
    (default, 'Trilha da Pedra Grande', 'Subida exigente por floresta até mirante com rocha gigante e vista de 360°', 'Atibaia', 'dificil', 28),
    (default, 'Trilha do Bonete', 'Longa e com variação de relevo, passa por cachoeiras e termina na praia do Bonete', 'Ilhabela', 'dificil', 29),
    (default, 'Trilha da Ferradura', 'Percurso exigente com terrenos rochosos e cachoeiras', 'Paranapiacaba', 'dificil', 30),
    (default, 'Travessia do Vale da Morte', 'Trilha desafiadora que atravessa áreas de vegetação densa e terrenos acidentados', 'Paranapiacaba', 'dificil', 31),
    (default, 'Travessia da Funicular', 'Segue os vestígios da antiga linha ferroviária Funicular, com ruínas históricas e vistas incríveis', 'Paranapiacaba', 'dificil', 32),
    (default, 'Trilha da Cachoeira do Elefante', 'Trilha extensa por mata fechada, cruzando rios até cachoeira de 60 metros', 'Mogi das Cruzes', 'dificil', 33),
	(default, 'Trilha do Vale do Rio Mogi', 'Percorre o coração da Mata Atlântica, seguindo o curso do Rio Mogi', 'Paranapiacaba', 'dificil', 34),
    (default, 'Trilha do Pico dos Marins', 'Trilha técnica e íngreme até o pico com 2.420 m de altitude; recomendada para trilheiros experientes', 'Piquete ', 'dificil', 35),
    (default, 'Travessia Lapinha x Tabuleiro', 'Trilha de longo curso na Serra do Espinhaço, com subidas íngremes, travessias de rios e vista para o maior conjunto de cachoeiras de MG', 'Conceição do Mato Dentro', 'dificil', 36);
    

truncate table Usuario;
select * from Usuario;
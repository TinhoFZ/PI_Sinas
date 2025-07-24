CREATE TABLE comunidade (
    id_comunidade INT PRIMARY KEY AUTO_INCREMENT,
    uf varchar(255) NOT NULL,
    cidade varchar(255) NOT NULL,
    bairro varchar(255) NOT NULL
);

# Por enquanto apenas alguns bairos, cidades etc
INSERT INTO comunidade(uf, cidade, bairro) VALUES("Pernambuco", "Paulista", "Janga");
INSERT INTO comunidade(uf, cidade, bairro) VALUES("Pernambuco", "Paulista", "Paratibe");

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(255) NOT NULL UNIQUE,
    email varchar(255) NOT NULL UNIQUE,
    senha varchar(255) NOT NULL,
    id_comunidade INT NOT NULL,
    FOREIGN KEY (id_comunidade) REFERENCES comunidade(id_comunidade)
);

# Valor do id_comunidade vai ser adicionado pelo JDBC
# Uusario cria conta -> JDBC salva valores em variáveis -> JDBC insere variáveis em 'usuario'
INSERT INTO usuario(nome, email, senha, id_comunidade) VALUES("Teste", "teste@", "123", "1");

# Postagens vão possuir tags sobre os locais ou temas que estão relacionados a postagem.
# O usuário pode criar uma tag nova ao adicioná-la a uma postagem
CREATE TABLE tag (
    id_tag INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO tag(nome) VALUES("Nacional");

# Comunitário e Nacional. Ambos podem ser um projeto (uma iniciativa para fazer alguma mudança) ou post (algo mais informal, compartilhando notícia etc).
CREATE TABLE postagem (
    id_postagem INT PRIMARY KEY AUTO_INCREMENT,
    titulo varchar(255) NOT NULL,
    texto varchar(255),
    id_tag INT NOT NULL,
    id_usuario INT NOT NULL,
    id_comunidade INT NOT NULL,
    FOREIGN KEY (id_tag) REFERENCES tag(id_tag),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_comunidade) REFERENCES comunidade(id_comunidade)
);

INSERT INTO postagem(titulo, texto, id_tag, id_usuario, id_comunidade) VALUES("Postagem", "Isso é uma postagem", "1", "1", "1")

SELECT u.id_usuario, u.nome, u.email, u.senha, u.id_comunidade, c.uf, c.cidade, c.bairro
FROM usuario u
INNER JOIN comunidade c
ON u.id_comunidade = c.id_comunidade;

# 'IF' a tag for nacional não vai incluir a comunidade da postagem
SELECT p.id_postagem, p.titulo, p.texto, t.nome, u.nome, c.uf, c.cidade, c.bairro
FROM postagem p
INNER JOIN tag t, usuario u, comunidade c
ON p.id_tag = t.id_tag, p.nome = u.nome;

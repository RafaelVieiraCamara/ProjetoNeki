-- Criação das sequences
CREATE SEQUENCE user_seq;
CREATE SEQUENCE skill_seq;

CREATE TABLE users (
    user_id INT PRIMARY KEY DEFAULT nextval('user_seq'),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

-- Tabela de Habilidades
CREATE TABLE skills (
    skill_id INT PRIMARY KEY DEFAULT nextval('skill_seq'),
    name VARCHAR(50) NOT NULL
);

-- Tabela Associativa para relacionamento entre Usuários e Habilidades
CREATE TABLE user_skills (
    user_id INT REFERENCES users(user_id),
    skill_id INT REFERENCES skills(skill_id),
    PRIMARY KEY (user_id, skill_id)
);
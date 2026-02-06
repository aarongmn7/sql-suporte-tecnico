CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    setor VARCHAR(50)
);

CREATE TABLE chamados (
    id_chamado INT PRIMARY KEY,
    id_usuario INT,
    categoria VARCHAR(50),
    descricao TEXT,
    status VARCHAR(20),
    data_abertura DATE,
    data_fechamento DATE,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE atendimentos (
    id_atendimento INT PRIMARY KEY,
    id_chamado INT,
    tecnico VARCHAR(100),
    observacao TEXT,
    data_atendimento DATE,
    FOREIGN KEY (id_chamado) REFERENCES chamados(id_chamado)
);

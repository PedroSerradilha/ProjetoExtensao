CREATE DATABASE IF NOT EXISTS Bem_Viver;
USE Bem_Viver;

CREATE TABLE usuario (
	id_usuario INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    nome_usuario VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo VARCHAR(10) NOT NULL,
    email_usuario VARCHAR(50) NOT NULL,
    senha_usuario VARCHAR(50) NOT NULL
);

select * from usuario;

CREATE TABLE recomendacoes (
    id_recomendacao INT auto_increment PRIMARY KEY,
    sintoma VARCHAR(100) NOT NULL,
    alimento VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL
);

select  * from recomendacoes;

CREATE TABLE historico_recomendacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    sintoma VARCHAR(100) NOT NULL,
    alimento VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    data_recomendacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario)
);

select * from historico_recomendacoes;

INSERT INTO recomendacoes (sintoma, alimento, descricao) VALUES
('Dor de cabeça', 'Alho', 'Propriedades anti-inflamatórias que ajudam a aliviar a dor.'),
('Dor de cabeça', 'Chá de gengibre', 'Ajuda a reduzir a inflamação e a dor.'),
('Enjoo', 'Gengibre', 'Melhora a digestão e combate náuseas.'),
('Náusea', 'Chá de hortelã', 'Alivia a sensação de náusea e acalma o estômago.'),
('Fadiga', 'Banana', 'Rica em potássio e fornece energia rápida.'),
('Febre', 'Caldo de galinha', 'Ajuda na hidratação e fornece nutrientes.'),
('Tosse', 'Mel', 'Tem propriedades anti-inflamatórias e suaviza a garganta.'),
('Dores Corporais', 'Cúrcuma', 'Possui propriedades anti-inflamatórias.'),
('Falta de ar', 'Alimentos ricos em ômega-3', 'Ajudam a melhorar a saúde pulmonar.'),
('Dificuldade para engolir', 'Alimentos macios', 'Facilitam a deglutição e são mais fáceis de consumir.');

INSERT INTO recomendacoes (sintoma, alimento, descricao) VALUES
('Calafrio', 'Gengibre', 'Possui propriedades termogênicas, ajudando a regular a temperatura do corpo e aliviando calafrios.'),
('Calafrio', 'Canela', 'Auxilia na circulação sanguínea, ajudando a aquecer o corpo e reduzir o calafrio.'),
('Falta de Ar', 'Gengibre', 'Além de ser anti-inflamatório, ajuda a dilatar as vias respiratórias.'),
('Dor Abdominal', 'Chá de hortelã', 'Alivia a sensação de náusea e acalma o estômago.'),
('Dor Abdominal', 'Camomila', 'Calmante, ajuda a relaxar o sistema digestivo e reduzir a inflamação abdominal.'),
('Prisão de Ventre', 'Fibras (Aveia, chia e legumes)', 'Aumentam o volume das fezes e ajudam a melhorar o trânsito intestinal.'),
('Falta de Apetite', 'Suco de Laranja', 'Rico em vitamina C, estimula o apetite e ajuda na digestão'),
('Falta de Apetite', 'Gengibre', 'Pode ajudar a estimular o apetite, especialmente se você estiver se recuperando de uma doença.'),
('Falta de ar', 'Alimentos ricos em ômega-3', 'Contém gorduras saudáveis que ajudam a regular os níveis de cortisol, hormônio do estresse'),
('Ansiedade', 'Abacate', 'Facilitam a deglutição e são mais fáceis de consumir.'),
('Ansiedade', 'Camomila', 'Tem efeito calmante e pode ajudar a reduzir os sintomas de ansiedade e nervosismo.'),
('Insônia', 'Amêndoas', 'Contêm magnésio, que tem efeito relaxante e pode melhorar a qualidade do sono.'),
('Insônia', 'Suco de Maracujá', 'Tem efeito calmante e pode ajudar a reduzir os sintomas de ansiedade e nervosismo.');
INSERT INTO [dbo].[Usuarios] (Nome, Email, Sexo, RG, CPF, NomeMae, SituacaoCadastro, DataCadastro) VALUES
('Ana Tereza de A. Vasques', 'ana.tereza@gmail.com', 'F', '2.523.322', '478.560.690-82', 'Maria Tereza de A. Vasques', 'A', '2021-01-01 00:00:00'),
('José Mariano Gomes', 'jose.mariano@gmail.com', 'M', '3.152.321', '604.986.340-78', 'Antônia Mariano Gomes', 'A', '2021-01-01 00:00:00'),
('Heitor Patricio da Silva', 'heitor.patricio@gmail.com', 'M', '5.545.644', '664.192.410-65', 'Joséfa Patricio da Silva', 'A', '2021-01-01 00:00:00'),
('Arthur Felipe R. Costa', 'arthur123@gmail.com', 'M', '5.412.148', '736.757.570-80', 'Simone Felipe R. Costa', 'A', '2021-01-01 00:00:00'),
('Elivelton Costa da Silva', 'elivelton.costa123@gmail.com', 'M', '3.654.115', '387.702.540-44', 'Maria Costa da Silva', 'A', '2021-01-01 00:00:00'),
('Debora Kaynara Patricio da Silva', 'debora.kaynara@gmail.com', 'F', '7.156.563', '119.894.260-69', 'Jéssica Kaynara Patricio da Silva', 'A', '2021-01-01 00:00:00'),
('Jéssica do Vale Soares', 'jessica.vale.soares@gmail.com', 'F', '6.488.448', '794.014.610-66', 'Gabriela do Vale Soares','A', '2021-01-01 00:00:00'),
('Irene Hamara da Costa Oliveira', 'irene.eumesmo@gmail.com', 'F', '5.584.621', '580.697.270-47', 'Irenilde Hamara da Costa Oliveira' ,'A', '2021-01-01 00:00:00'),
('Keline Pinheiro Araujo', 'kaline.123@gmail.com', 'F', '34.511.5', '317.257.250-10', 'Karia Pinheiro Araujo', 'A', '2021-01-01 00:00:00'),
('Larissi Araujo da Silva', 'larissi.araujo@gmail.com', 'F', '2.154.462', '146.581.080-38', 'Maria Araujo da Silva', 'A', '2021-01-01 00:00:00');

INSERT INTO [dbo].[Contatos] (UsuarioId, Telefone, Celular) VALUES
(1, '(75) 39543-4531', '(75) 91896-3914'),
(2, '(74) 36604-1090', '(74) 90169-1967'),
(3, '(33) 13613-6742', '(33) 99686-3342'),
(4, '(82) 31979-3471', '(82) 95532-9781'),
(5, '(40) 55656-5270', '(40) 99524-8943'),
(6, '(35) 29148-1908', '(35) 97808-5100'),
(7, '(36) 15250-6172', '(36) 93652-9746'),
(8, '(33) 54543-6849', '(33) 90756-8017'),
(9, '(43) 49019-5729', '(43) 98377-2284'),
(10, '(38) 83710-6739', '(38) 98760-2494');

INSERT INTO [dbo].[EnderecosEntrega] (UsuarioId, NomeEndereco, CEP, Estado, Cidade, Bairro, Endereco, Numero, Complemento) VALUES
(1, 'Casa', '49700-974', 'SE', 'Capela', 'Centro', 'Rua Principal, s/n', '12', 'Casa 12 - Verde'),
(1, 'Trabalho', '49700-974', 'SE', 'Capela', 'Centro', 'Rua Principal, s/n', '10', 'Ed. Fulano - Sala 10'),
(1, 'Casa da mãe', '49700-901', 'SE', 'Capela', 'Centro', 'Rua Principal, s/n', '1', 'Casa 1'),
(1, 'Casa da irmã', '49700-501', 'SE', 'Capela', 'Centro', 'Rua 30, s/n', '29', 'Casa 30'),

(2, 'Casa', '24370-216', 'RJ', 'Niterói', 'Jurujuba', 'Travessa José Bento', '1', 'Casa 1'),
(2, 'Trabalho', '24370-220', 'RJ', 'Niterói', 'Jurujuba', 'Travessa José Bento', '30', 'Ed. Fulano - Sala 30'),

(3, 'Casa', '63040-230', 'CE', 'Juazeiro do Norte', 'Lagoa Seca', 'Rua Severino Alves Sobrinho', '30', 'Casa 30'),
(3, 'Trabalho', '63040-230', 'CE', 'Juazeiro do Norte', 'Lagoa Seca', 'Rua Severino Alves Sobrinho', '30', 'Ed. Fulano - Sala 30'),

(4, 'Casa', '59607-265', 'RN', 'Mossoró', 'Aeroporto', 'Rua Francisco Pereira da Silva', '21', 'Casa 21'),
(4, 'Trabalho', '59607-265', 'RN', 'Mossoró', 'Aeroporto', 'Rua Francisco Pereira da Silva', '11', 'Ed.Fulano - Sala 11'),

(5, 'Casa', '79826-240', 'MS', 'Dourados', 'Cohafaba III Plano', 'Rua Manoel Santiago', '21', 'Casa 21'),
(5, 'Trabalho', '79826-240', 'MS', 'Dourados', 'Cohafaba III Plano', 'Rua Manoel Santiago', '10', 'Ed.Fulano - Sala 19'),

(6, 'Casa', '64012-825', 'PI', 'Teresina', 'Santa Maria da Codipe', 'Quadra N', '123', 'Casa 123'),
(6, 'Trabalho', '64012-825', 'PI', 'Teresina', 'Santa Maria da Codipe', 'Quadra N', '251', 'Ed. Fulano - Sala 123'),

(7, 'Casa', '60731-340', 'CE', 'Fortaleza', 'Canindezinho', 'Rua João Faustino Ribeiro', '14', 'Casa 14'),
(7, 'Trabalho', '60731-340', 'CE', 'Fortaleza', 'Canindezinho', 'Rua João Faustino Ribeiro', '300', 'Ed. Fulano - Sala 300'),

(8, 'Casa', '78156-202', 'MT', 'Várzea Grande', 'Jardim Manaíra', 'Rua Dois', '41', 'Casa 41'),
(8, 'Trabalho', '78156-202', 'MT', 'Várzea Grande', 'Jardim Manaíra', 'Rua Dois', '13', 'Ed. Fulano - Sala 13'),

(9, 'Casa', '68906-450', 'AP', 'Macapá', 'Marabaixo', 'Rua Beira Rio', '2', 'Casa 2'),
(9, 'Trabalho', '68906-450', 'AP', 'Macapá', 'Marabaixo', 'Rua Beira Rio', '4', 'Ed.Fulano - Sala 4'),

(10, 'Casa', '53425-560', 'PE', 'Paulista', 'Nossa Senhora da Conceição', 'Rua Belo Vale', '1', 'Apt 103'),
(10, 'Casa', '53425-560', 'PE', 'Paulista', 'Nossa Senhora da Conceição', 'Rua Belo Vale', '1', 'Ed. Fulano - 103');

--14 registros de Departamentos
INSERT INTO [dbo].[Departamentos] (Nome) VALUES 
('Mercado'),
('Celulares'),
('Informática e Tablets'),
('Moda, beleza e perfumaria'),
('eletrodomêsticos e split'),
('TV, áudio e home theater'),
('Móveis e decoração'),
('Brinquedos e bebês'),
('Eletroportáteis'),
('Esporte e suplementos'),
('Games, livros e filmes'),
('Produtos importados'),
('Para sua empresa'),
('Cartão, parceiros e serviços');


INSERT INTO [dbo].[UsuariosDepartamentos] (UsuarioId, DepartamentoId) VALUES
(1, 1),
(1, 2),
(1, 3),

(2, 4),
(2, 5),
(2, 6),

(3, 7),
(3, 8),
(3, 9),

(4, 10),
(4, 11),
(4, 12),

(5, 13),
(5, 14),
(5, 1),

(6, 2),
(6, 3),
(6, 4),

(6, 5),
(6, 6),
(6, 7),

(7, 8),
(7, 9),
(7, 10),

(8, 8),
(8, 9),
(8, 10),

(9, 11),
(9, 12),
(9, 13),

(10, 14),
(10, 1),
(10, 2);


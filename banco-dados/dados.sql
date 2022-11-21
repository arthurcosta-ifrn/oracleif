-- INSERINDO DADOS

-- tb_tipo_usuario
insert into tb_tipo_usuario(tipo_usuario) values ('ADMINISTRADOR'), ('NORMAL');

-- tb_usuario
insert into tb_usuario(id_tipo, nome, senha, status) values (1, 'ORACLEIF ADMIN', 'Ifrn.2022', 'A'),
                                                            (1, 'ORACLEIF ADMIN', 'Ifrn.2022', 'A');

-- tb_categoria
insert into tb_categoria (nome_categoria) values ('CONSELHO'),
                                                 ('PIADAS'),
                                                 ('FATOS ALEATÓRIOS'),
                                                 ('CANTADAS');

-- tb_mensagem
insert into tb_mensagem (id_categoria, mensagem, referencia) values (1, 'CONSELHO 1', 'REFERÊNCIAS'),
																	(1, 'CONSELHO 2', 'REFERÊNCIAS'),
																	(1, 'CONSELHO 3', 'REFERÊNCIAS');

insert into tb_mensagem (id_categoria, mensagem, referencia) values (2, 'PIADA 1', 'REFERÊNCIAS'),
																	(2, 'PIADA 2', 'REFERÊNCIAS'),
                                                                    (2, 'PIADA 3', 'REFERÊNCIAS');

insert into tb_mensagem (id_categoria, mensagem, referencia) values (3, 'FATO ALEATÓRIO 1', 'REFERÊNCIAS'),
																	(3, 'FATO ALEATÓRIO 2', 'REFERÊNCIAS'),
                                                                    (3, 'FATO ALEATÓRIO 3', 'REFERÊNCIAS');

insert into tb_mensagem (id_categoria, mensagem, referencia) values (4, 'CANTADA 1', 'REFERÊNCIAS'),
																	(4, 'CANTADA 2', 'REFERÊNCIAS'),
																	(4, 'CANTADA 2', 'REFERÊNCIAS');
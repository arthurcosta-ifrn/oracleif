create database if not exists db_oracleif;

create table if not exists tb_categoria (
	id     integer primary key not null auto_increment,
    nome_categoria   varchar(30) not null
);

create table if not exists tb_mensagem (
    id             int not null primary key auto_increment,
    id_categoria   int not null,
    mensagem       varchar(1000) not null,
    referencia     varchar(1000) not null,
    foreign key (id_categoria) references tb_categoria (id)
);

create table if not exists tb_tipo_usuario (
    id             int not null primary key auto_increment,
    tipo_usuario   varchar(30) not null
);

create table if not exists tb_usuario (
    id           int not null primary key auto_increment,
    id_tipo      int not null,
    nome         varchar(50) not null,
    senha        varchar(100) not null,
    status       char(1),
    constraint ck_status check (status in ('A', 'I')),
    foreign key (id_tipo) references tb_tipo_usuario (id)
);

const express = require('express');
const mysql = require('mysql');
//const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const port = 3000;

//app.use(bodyParser.json());
//app.use(bodyParser.urlencoded({ extended: true }));
//app.use(express.static('public'));
//app.use(cors());

app.use(express.json());

const connection = mysql.createConnection({
    host: '192.168.0.77',
    user: 'arthur',
    password: 'arthur.2004',
    database: 'db_oracleif'
});

app.listen(port, () => {
    connection.connect();
    console.log(`App listening on port ${port}.`);
});

app.get('/', (req, res) => {
    res.send('Hello, World!');
});

app.get('/mensagens', (req, res) => {
    let sql = 'SELECT * FROM tb_mensagem';
    connection.query(sql, (err, rows, fields) => {
        if (!err) {
            res.json({'status': 'OK', 'res': rows});
        } else {
            res.json({'status': 'ERRO', 'res': `${err.code} - ${err.sqlMessage}`});
        }
    });
});

app.get('/mensagem/:id', (req, res) => {
    let id = req.params.id;
    let sql = `SELECT * FROM tb_mensagem WHERE id = ${id}`;
    connection.query(sql, (err, rows, fields) => {
        if (!err) {
            res.json({'status': 'OK', 'res': rows});
        } else {
            res.json({'status': 'ERRO', 'res': `${err.code} - ${err.sqlMessage}`});
        }
    });
})

app.get('/mensagem/:id_cat/categoria', (req, res) => {
    let id_cat = req.params.id_cat;
    let sql = `SELECT * FROM tb_mensagem WHERE id_categoria = ${id_cat}`;
    connection.query(sql, (err, rows, fields) => {
        if (!err) {
            res.json({'status': 'OK', 'res': rows});
        } else {
            res.json({'status': 'ERRO', 'res': `${err.code} - ${err.sqlMessage}`});
        }
    });
});

/*app.get('/mensagem/aleatorio', (req, res) => {
    let sql = 'SELECT * FROM tb_mensagem ORDER BY RAND() LIMIT 1';
    connection.query(sql, (err, rows, fields) => {
        if (!err) {
            res.json({'status': 'OK', 'res': rows});
        } else {
            res.json({'status': 'ERRO', 'res': `${err.code} - ${err.sqlMessage}`});
        }
    });
});*/

app.get('/mensagem/:id_cat/aleatorio', (req, res) => {
    let id_cat = req.params.id_cat;
    let sql = `SELECT * FROM tb_mensagem WHERE id_categoria = ${id_cat} ORDER BY RAND() LIMIT 1`;
    connection.query(sql, (err, rows, fields) => {
        if (!err) {
            res.json({'status': 'OK', 'res': rows});
        } else {
            res.json({'status': 'ERRO', 'res': `${err.code} - ${err.sqlMessage}`});
        }
    });
});

app.get('/categorias', (req, res) => {
    let sql = 'SELECT * FROM tb_categoria';
    connection.query(sql, (err, rows, fields) => {
        if (!err) {
            res.json({'status': 'OK', 'res': rows});
        } else {
            res.json({'status': 'ERRO', 'res': `${err.code} - ${err.sqlMessage}`});
        }
    });
});

app.get('/categoria/:id', (req, res) => {
    let id = req.params.id;
    let sql = `SELECT * FROM tb_categoria WHERE id = ${id}`;
    connection.query(sql, (err, rows, fields) => {
        if (!err) {
            res.json({'status': 'OK', 'res': rows});
        } else {
            res.json({'status': 'ERRO', 'res': `${err.code} - ${err.sqlMessage}`});
        }
    });
});

app.get('/tipos_usuarios', (req, res) => {
    let sql = 'SELECT * FROM tb_tipo_usuario';
    connection.query(sql, (err, rows, fields) => {
        if (!err) {
            res.json({'status': 'OK', 'res': rows});
        } else {
            res.json({'status': 'OK', 'res': `${err.code} - ${err.sqlMessage}`});
        }
    });
});

app.get('/usuarios', (req, res) => {
    let sql = 'SELECT * FROM tb_usuario';
    connection.query(sql, (err, rows, fields) => {
        if (!err) {
            res.json({'status': 'OK', 'res': rows});
        } else {
            res.json({'status': 'OK', 'res': `${err.code} - ${err.sqlMessage}`});
        }
    });
});

app.post('/categoria', (req, res) => {
    let categoria = req.body.categoria;
    if (categoria != null && categoria != {}) {
        let sql = `INSERT INTO tb_categoria (nome_categoria)
                        VALUES ('${categoria}')`;
        connection.query(sql, (err, rows, fields) => {
            if (!err) {
                res.json({'status': 'OK', 'res': 'Nova categoria inserida.'});
            } else {
                res.json({'status': 'ERRO', 'res': `${err.code} - ${err.sqlMessage}`});
            }
        });
    }
}); /* {"categoria": "nome da categoria"} */

app.post('/mensagem', (req, res) => {
    let corpoRequisicao = req.body;
    if (corpoRequisicao != null && corpoRequisicao != {}) {
        let idCategoria = corpoRequisicao.id_categoria;
        let mensagem = corpoRequisicao.mensagem;
        let referencia = corpoRequisicao.referencia;
        let sql = `INSERT INTO tb_mensagem (id_categoria, mensagem, referencia)
                        VALUES (${idCategoria}, '${mensagem}', '${referencia}')`;
        connection.query(sql, (err, rows, fields) => {
            if (!err) {
                res.json({'status': 'OK', 'res': 'Nova mensagem inserida.'});
            } else {
                res.json({'status': 'ERRO', 'res': `${err.code} - ${err.sqlMessage}`});
            }
        });
    }
}); /*{"id_categoria": numero,"mensagem": "mensagem","referencia": "referencia"}*/

app.post('/tipo_usuario', (req, res) => {
    let corpoRequisicao = req.body;
    if (corpoRequisicao != null && corpoRequisicao != {}) {
        let tipoUsuario = corpoRequisicao.tipo_usuario;
        let sql = `INSERT INTO tb_tipo_usuario (tipo_usuario)
                        VALUES ('${tipoUsuario}')`;
        connection.query(sql, (err, rows, fields) => {
            if (!err) {
                res.json({'status': 'OK', 'res': 'Novo tipo de usuário inserido.'});
            } else {
                res.json({'status': 'ERRO', 'res': `${err.code} - ${err.sqlMessage}`});
            }
        });
    }
}); /* {"tipo_usuario": "nome_tipo"} */
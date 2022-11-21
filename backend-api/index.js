const express = require('express');
const mysql = require('mysql'); // https://medium.com/@almeida.adriano/integrando-o-mysql-ao-nodejs-84dd5a9c8396
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const port = 3000;

const con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'db_oracleif'
});

app.listen(port, () => {
    con.connect();
    console.log(`App listening on port ${port}.`);
});

app.get('/', (req, res) => {
    res.send('Hello, World!');
});

app.get('/mensagem/:id', (req, res) => {
    let id = req.params.id;
    let sql = `select * from tb_mensagem m where m.id_categoria = ${id}`;
    con.query(sql, (err, rows) => {
        if (!err) {
            if (rows.length > 0) {
                res.json(rows[Math.floor(Math.random() * rows.length)]);
            } else {
                res.send('NÃO HÁ DADOS');
            }
            
        } else {
            res.send(`${err.code} - ${err.message}`);
        }
    });
});
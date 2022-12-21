const connection = require('./conexao');

const obterTodos = async () => {
    const [usuarios] = await connection.execute('SELECT * FROM tb_usuario');
    return usuarios;
};

const verificaDadosUsuario = async (dadosUsuario) => {
    const { nome, senha } = dadosUsuario;
    const query = 'SELECT * FROM tb_usuario WHERE nome = ? AND senha = ?';
    const [usuario] = await connection.execute(query, [nome, senha]);
    return usuario;
}

module.exports = {
    obterTodos,
    verificaDadosUsuario
}
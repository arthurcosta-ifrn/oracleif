const connection = require('./conexao');

const obterTodas = async () => {
    const [mensagens] = await connection.execute('SELECT * FROM tb_mensagem');
    return mensagens;
};

const obterMensagemPorId = async (id) => {
    const [mensagem] = await connection.execute('SELECT * FROM tb_mensagem WHERE id = ?', [id]);
    return mensagem;
};

const obterMensagemPorCategoria = async (idCat) => {
    const query = 'SELECT * FROM tb_mensagem WHERE id_categoria = ?';
    const [mensagem] = await connection.execute(query, [idCat]);
    return mensagem;
};

const obterMensagemAleatoriaPorCategoria = async (idCat) => {
    const query = 'SELECT * FROM tb_mensagem WHERE id_categoria = ? ORDER BY RAND() LIMIT 1';
    const [mensagem] = await connection.execute(query, [idCat]);
    return mensagem;
};

const inserirMensagem = async (mensagem) => {
    const { idCat, msg, ref } = mensagem;
    const query = 'INSERT INTO tb_mensagem(id_categoria, mensagem, referencia) VALUES (?, ?, ?)';
    const [mensagemCriada] = await connection.execute(query, [idCat, msg, ref]);
    return {inserted: mensagemCriada.insertId};
};

const excluirMensagem = async (id) => {
    const query = 'DELETE FROM tb_mensagem WHERE id = ?';
    const [mensagemExcluida] = await connection.execute(query, [id]);
    return mensagemExcluida;
};

const atualizarMensagem = async (id, mensagem) => {
    const { idCat, msg, ref } = mensagem;
    query = 'UPDATE tb_mensagem SET id_categoria = ?, mensagem = ?, referencia = ? WHERE id = ?';
    [mensagemAtualizada] = await connection.query(query, [idCat, msg, ref, id]);
    return mensagemAtualizada;
};

module.exports = {
    obterTodas,
    obterMensagemPorId,
    obterMensagemPorCategoria,
    obterMensagemAleatoriaPorCategoria,
    inserirMensagem,
    excluirMensagem,
    atualizarMensagem
};
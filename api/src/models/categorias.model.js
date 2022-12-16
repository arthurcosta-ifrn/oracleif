const connection = require('./conexao');

const obterTodas = async () => {
    const query = 'SELECT * FROM tb_categoria';
    const [categorias] = await connection.execute(query);
    return categorias;
};

const obterCategoriaPorId = async (id) => {
    const query = 'SELECT * FROM tb_categoria WHERE id = ?';
    const [categoria] = await connection.execute(query, [id]);
    return categoria;
};

const inserirCategoria = async (categoria) => {
    const { nomeCategoria } = categoria;
    const query = 'INSERT INTO tb_categoria (nome_categoria) VALUES (?)';
    const [categoriaCriada] = await connection.execute(query, [nomeCategoria]);
    return { inserted: categoriaCriada.insertId };
};

const excluirCategoria = async (id) => {
    const query = 'DELETE FROM tb_categoria WHERE id = ?';
    const [categoriaExcluida] = await connection.execute(query, [id]);
    return categoriaExcluida;
};

const atualizarCategoria = async (id, categoria) => {
    const { nomeCategoria } = categoria;
    const query = 'UPDATE tb_categoria SET nome_categoria = ? WHERE id = ?';
    const [categoriaAtualizada] = await connection.execute(query, [nomeCategoria, id]);
    return categoriaAtualizada;
};

module.exports = {
    obterTodas,
    obterCategoriaPorId,
    inserirCategoria,
    excluirCategoria,
    atualizarCategoria
};
const usuariosModel = require('../models/usuarios.model');

const obterTodos = async (_req, res) => {
    const usuarios = await usuariosModel.obterTodos();
    return res.status(200).json(usuarios);
};

const verificaDadosUsuario = async (req, res) => {
    const usuario = await usuariosModel.verificaDadosUsuario(req.body);
    res.status(201).json(usuario);
}

module.exports = {
    obterTodos,
    verificaDadosUsuario
};
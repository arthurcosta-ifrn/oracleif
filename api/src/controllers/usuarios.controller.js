const usuariosModel = require('../models/usuarios.model');

const obterTodos = async (_req, res) => {
    const usuarios = await usuariosModel.obterTodos();
    return res.status(200).json(usuarios);
};

const verificaDadosUsuario = async (req, res) => {
    const usuario = await usuariosModel.verificaDadosUsuario(req.body);
    if (usuario.length > 0) {
        res.status(201).json({'status': true, 'msg': 'User can enter.'});
    } else {
        res.status(201).json({'status': false, 'msg': 'User can not enter.'})
    }
}

module.exports = {
    obterTodos,
    verificaDadosUsuario
};
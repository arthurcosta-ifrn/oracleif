const categoriasModel = require('../models/categorias.model');

const obterTodas = async (req, res) => {
    const categorias = await categoriasModel.obterTodas();
    res.status(200).json(categorias);
};

const obterCategoriaPorId = async (req, res) => {
    const { id } = req.params;
    const categoria = await categoriasModel.obterCategoriaPorId(id);
    res.status(200).json(categoria);
};

const inserirCategoria = async (req, res) => {
    const categoriaCriada = await categoriasModel.inserirCategoria(req.body);
    return res.status(201).json(categoriaCriada);
};

const excluirCategoria = async (req, res) => {
    const { id } = req.params;
    await categoriasModel.excluirCategoria(id);
    return res.status(204).json();
};

const atualizarCategoria = async (req, res) => {
    const { id } = req.params;
    await categoriasModel.atualizarCategoria(id, req.body);
    return res.status(204).json();
};

module.exports = {
    obterTodas,
    obterCategoriaPorId,
    inserirCategoria,
    excluirCategoria,
    atualizarCategoria
};
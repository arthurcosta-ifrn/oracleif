const mensagensModel = require('../models/mensagens.model');

const obterTodas = async (_req, res) => {
    const mensagens = await mensagensModel.obterTodas();
    return res.status(200).json(mensagens);
};

const obterMensagemPorId = async (req, res) => {
    const { id } = req.params;
    const mensagem = await mensagensModel.obterMensagemPorId(id);
    res.status(200).json(mensagem);
};

const obterMensagemPorCategoria = async (req, res) => {
    const { idcat } = req.params;
    const mensagem = await mensagensModel.obterMensagemPorCategoria(idcat);
    res.status(200).json(mensagem);
};

const obterMensagemAleatoriaPorCategoria = async (req, res) => {
    const { idcat } = req.params;
    const mensagem = await mensagensModel.obterMensagemAleatoriaPorCategoria(idcat);
    res.status(200).json(mensagem);
};

const inserirMensagem = async (req, res) => {
    const mensagemCriada = await mensagensModel.inserirMensagem(req.body);
    return res.status(201).json(mensagemCriada);
};

const excluirMensagem = async (req, res) => {
    const { id } = req.params;
    await mensagensModel.excluirMensagem(id);
    return res.status(204).json();
};

const atualizarMensagem = async (req, res) => {
    const { id } = req.params;
    await mensagensModel.atualizarMensagem(id, req.body);
    return res.status(204).json();
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
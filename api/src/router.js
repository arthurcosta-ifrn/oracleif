const express = require('express');
const app = require('./app');

const router = express.Router();

const mensagensController = require('./controllers/mensagens.controller');
const categoriasController = require('./controllers/categorias.controller');
const usuariosController = require('./controllers/usuarios.controller');
const mensagensMiddleware = require('./middlewares/mensagens.middleware');
const categoriasMiddleware = require('./middlewares/categorias.middleware');

router.get('/mensagens', mensagensController.obterTodas);
router.get('/mensagens/:id', mensagensController.obterMensagemPorId);
router.get('/mensagens/:idcat/categoria', mensagensController.obterMensagemPorCategoria);
router.get('/mensagens/:idcat/categoria/aleatorio',
    mensagensController.obterMensagemAleatoriaPorCategoria);
router.get('/categorias', categoriasController.obterTodas);
router.get('/categorias/:id', categoriasController.obterCategoriaPorId);
router.get('/usuarios', usuariosController.obterTodos);

router.post('/mensagens',
    mensagensMiddleware.validarCampoIdCat,
    mensagensMiddleware.validarCampoMsg,
    mensagensMiddleware.validarCampoRef,
    mensagensController.inserirMensagem
);
router.post('/categorias',
    categoriasMiddleware.validarCampoNomeCategoria,
    categoriasController.inserirCategoria
);
router.post('/usuario', usuariosController.verificaDadosUsuario)

router.delete('/mensagens/:id', mensagensController.excluirMensagem);
router.delete('/categorias/:id', categoriasController.excluirCategoria);

router.put('/mensagens/:id',
    mensagensMiddleware.validarCampoIdCat,
    mensagensMiddleware.validarCampoMsg,
    mensagensMiddleware.validarCampoRef,
    mensagensController.atualizarMensagem
);
router.put('/categorias/:id',
    categoriasMiddleware.validarCampoNomeCategoria,
    categoriasController.atualizarCategoria
);

module.exports = router;
const validarCampoNomeCategoria = (req, res, next) => {
    const { body } = req;

    if (body.nomeCategoria === undefined) {
        return res.status(400).json({ mensagem: 'O campo nomeCategoria não foi informado.' });
    }

    if (body.nomeCategoria === '') {
        return res.status(400).json({ mensagem: 'O campo nomeCategoria não pode ser vazio.' })
    }

    next();
};

module.exports = {
    validarCampoNomeCategoria
};
const validarCampoIdCat = (req, res, next) => {
    const { body } = req;

    if (body.idCat === undefined) {
        return res.status(400).json({ mensagem: 'O campo idCat não foi informado.' });
    }

    if (body.idCat === '') {
        return res.status(400).json({ mensagem: 'O campo idCat não pode ser vazio.' });
    }

    next();
};

const validarCampoMsg = (req, res, next) => {
    const { body } = req;

    if (body.msg === undefined) {
        return res.status(400).json({ mensagem: 'O campo msg não foi informado.' });
    }

    if (body.msg === '') {
        return res.status(400).json({ mensagem: 'O campo msg não pode ser vazio.' });
    }

    next();
};

const validarCampoRef = (req, res, next) => {
    const { body } = req;

    if (body.ref === undefined) {
        return res.status(400).json({ mensagem: 'O campo ref não foi informado.' });
    }

    if (body.ref === '') {
        return res.status(400).json({ mensagem: 'O campo ref não pode ser vazio.' });
    }

    next();
};

module.exports = {
    validarCampoIdCat,
    validarCampoMsg,
    validarCampoRef
};
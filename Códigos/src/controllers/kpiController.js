var kpiModel = require("../models/kpiModel");

console.log("Cheguei no controller")

function listar(req, res) {
    var idUsuario = req.params.idUsuario;
    
    console.log("Controller: idUsuario recebido:", idUsuario);

    if (idUsuario == undefined) {
        console.log("Controller: idUsuario está undefined!");
        return res.status(400).send("O idUsuario é obrigatório!");
    }

    kpiModel.listar(idUsuario).then(function(resultado){
        // precisamos informar que o resultado voltará para o front-end como uma resposta em json
        res.status(200).json(resultado);
        console.log("Controller: Resultado do model:", resultado);


    }).catch(function(erro){
        console.error("Controller: Erro ao listar KPIs:", erro); 
        console.log(erro.sqlMessage)
        res.status(500).json(erro.sqlMessage);
    })
}

function listarLinha(req, res) {
    var idUsuario = req.params.idUsuario;

    console.log("1 - Cheguei no controller da linha, vamoo!");
    kpiModel.listarLinha(idUsuario).then(
        function (resultado) {
            console.log("1 - To na função do controller da linha");
            res.status(200).json(resultado);
        }
    ).catch(
        function (erro) {
            console.log("1 - Deu merda aqui no controller da linha: /n");
            res.status(500).json({ erro: erro.sqlMessage || erro.message || erro });
        }
    )
}

module.exports = {
    listar,
    listarLinha
}
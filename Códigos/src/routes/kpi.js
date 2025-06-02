var express = require("express");
var router = express.Router();

var kpiController = require("../controllers/kpiController");

router.get("/listar/:idUsuario", function(req, res) {
    console.log("Cheguei na rota KPI /listar/:idUsuario com idUsuario:", req.params.idUsuario);
    kpiController.listar(req, res)
});

router.get("/listarLinha/:idUsuario", function (req,res) {
    console.log("1 - Cheguei aqui no route da linha");
    // graficos/linha
    kpiController.listarLinha(req, res);
} );

module.exports = router;
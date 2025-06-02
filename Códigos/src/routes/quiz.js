var express = require("express");
var router = express.Router();

var quizController = require("../controllers/quizController");

router.post("/quizTrilha", function(req, res) {
    quizController.quizTrilha(req, res)
});



module.exports = router;
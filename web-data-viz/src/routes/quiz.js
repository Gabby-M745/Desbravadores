var express = require("express");
var router = express.Router();

var quizController = require("../controllers/quizController");

router.post("/Resultado", function (req, res) {/*caminhho da inserção de dados para controll*/ 
    quizController.Resultado(req, res);
});
router.post('/iniciar', quizController.iniciar);


module.exports = router;

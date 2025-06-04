var quizModel = require("../models/quizModel");/* estava no model*/

function iniciar(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var idUsuario = req.body.idUsuarioServer;
    var pontuacao = req.body.pontuacaoServer;
    var correta = req.body.corretaServer;
    var errado = req.body.erradoServer;/*front */
   var fkQuiz = req.body.fkQuiz;
   console.log("fkQuiz recebido:", fkQuiz);
    // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
    quizModel.iniciar(idUsuario,pontuacao, correta, errado,fkQuiz)/*back */
        .then(
            function (resultado) {
                res.json(resultado);
            }
        ).catch(
            function (erro) {
                console.log(erro);
                console.log(
                    "\nHouve um erro ao realizar o cadastro! Erro: ",
                    erro.sqlMessage
                );
                res.status(500).json(erro.sqlMessage);
            }
        );
}
module.exports = {/*"validar funcao" */
  iniciar,
}
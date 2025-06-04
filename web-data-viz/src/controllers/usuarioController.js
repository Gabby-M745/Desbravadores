var usuarioModel = require("../models/usuarioModel");

function autenticar(req, res) {
    var Nome = req.body.nomeServer;
    var Senha = req.body.senhaServer;

    if (Nome == undefined) {
        res.status(400).send("Seu email está undefined!");
    } else if (Senha == undefined) {
        res.status(400).send("Sua senha está indefinida!");
    } else {

        usuarioModel.autenticar(Nome, Senha)
            .then(
                function (resultadoAutenticar) {
                    console.log(`\nResultados encontrados: ${resultadoAutenticar.length}`);
                    console.log(`Resultados: ${JSON.stringify(resultadoAutenticar)}`); // transforma JSON em String

                    if (resultadoAutenticar.length == 1) {
                        console.log(resultadoAutenticar);
                        console.log("Usuário encontrado: ", resultadoAutenticar[0]);
                        console.log("Autenticação realizada com sucesso!");
                        res.json({
                            idUsuario: resultadoAutenticar[0].idUsuario,
                            Nome: resultadoAutenticar[0].Nome
                        });

                    } else if (resultadoAutenticar.length == 0) {
                        res.status(403).send("Email e/ou senha inválido(s)");
                    } else {
                        res.status(403).send("Mais de um usuário com o mesmo login e senha!");
                    }
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log("\nHouve um erro ao realizar o login! Erro: ", erro.sqlMessage);
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }

}

function cadastrar(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var nome = req.body.usuarioServer;
    var clube = req.body.clubServer;
    var unidade = req.body.unidadServer;
    var associaM = req.body.regiaoServer;
    var senha = req.body.senhaD7Server;
    var pessoA = req.body.pessoaServer;

    // Faça as validações dos valores
    if (nome == undefined) {
        res.status(400).send("Seu nome está undefined!");
    } else if (clube == undefined) {
        res.status(400).send("Seu clube está undefined!");
    } else if (unidade == undefined) {
        res.status(400).send("Sua unidade está undefined!");
    } else if (associaM == undefined) {
        res.status(400).send("Sua associação/Missão está undefined!")
    } else if (senha == undefined) {
        res.status(400).send("Sua senha está undefined!");
    } else if (pessoA == undefined) {
        res.status(400).send("Seu campo 'pessoa' está undefined!")
    }
    // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
    usuarioModel.cadastrar(nome,clube,unidade,associaM,senha,pessoA)
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

/*
function conectaQuiz(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var correta = req.body.corretaServer;
    var errado = req.body.erradoServer;

    // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
    usuarioModel.conectaQuiz(correta, errado)
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
}*/



module.exports = {/*"validar funcao" */
    autenticar,
    cadastrar,
    /*conectaQuiz*/
}
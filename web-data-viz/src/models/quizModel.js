var database = require("../database/config")

function iniciar (idUsuario, correta, errado,pontuacao,fkQuiz) {
    console.log("ACESSEI O USUARIO MODEL \n\n function iniciar():", idUsuario, correta, errado,pontuacao,fkQuiz);

    var instrucaoSql = `
       INSERT INTO Resultado (fkUsuario,fkQuiz,totalAcertosQuiz, totalErrosQuiz, pontuacao)
        VALUES (${idUsuario},${fkQuiz},${correta}, ${errado},${pontuacao});
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
module.exports = {
 iniciar,
};
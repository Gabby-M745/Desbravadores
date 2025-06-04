var database = require("../database/config")

function iniciar (correta, errado) {
    console.log("ACESSEI O USUARIO MODEL \n\n function conectaQuiz():", correta, errado);

    var instrucaoSql = `
        INSERT INTO resultadosQuiz (totalAcertosQuiz, totalErrosQuiz)
        VALUES (${correta}, ${errado});
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
module.exports = {
 iniciar,
};
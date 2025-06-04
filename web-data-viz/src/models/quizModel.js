var database = require("../database/config")

function iniciar (idUsuario,pontuacao, correta, errado) {
    console.log("ACESSEI O USUARIO MODEL \n\n function iniciar():", pontuacao, correta, errado);

    var instrucaoSql = `
        INSERT INTO Resultado (fkUsuario,totalAcertosQuiz, totalErrosQuiz, pontuacao)
        VALUES (${idUsuario},${correta}, ${errado}, ${pontuacao});
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
module.exports = {
 iniciar,
};
var database = require("../database/config");

function buscarUltimasMedidas(id_usuario, fkQuiz) {

    var instrucaoSql = `SELECT totalAcertosQuiz AS acertas,
    totalErrosQuiz AS erradas,
    pontuacao,
    fkQuiz
    from Resultado 
    where fkUsuario=${id_usuario} AND fkQuiz=${fkQuiz} order by idResultado desc;`; 
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal(idAquario) {

    var instrucaoSql = `SELECT 
        dht11_temperatura as temperatura, 
        dht11_umidade as umidade,
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico, 
                        fk_aquario 
                        FROM medida WHERE fk_aquario = ${idAquario} 
                    ORDER BY id DESC LIMIT 1`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal
}

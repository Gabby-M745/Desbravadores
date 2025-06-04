var database = require("../database/config")

function autenticar(Email, Senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", Email, Senha)
    var instrucaoSql = `
        SELECT idUsuario, Email FROM Usuario WHERE Email = '${Email}' AND senha = '${Senha}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

// Coloque os mesmos parâmetros aqui. Vá para a var instrucaoSql
function cadastrar(nome,clube,unidade,associaM,senha,pessoA) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", nome, clube, unidade, associaM, pessoA,senha );
    
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucaoSql = `
       insert into Usuario (Nome,Clube,Unidade,AssoMissao,Usuar,Senha) values 
        ('${nome}','${clube}','${unidade}}', '${associaM}','${senha}', '${pessoA}'); 
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
/*
function conectaQuiz(correta, errado) {
    console.log("ACESSEI O USUARIO MODEL \n\n function conectaQuiz():", correta, errado);

    var instrucaoSql = `
        INSERT INTO resultadosQuiz (totalAcertosQuiz, totalErrosQuiz)
        VALUES (${correta}, ${errado});
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}*/


module.exports = {
    autenticar,
    cadastrar,
/*    conectaQuiz*/
};
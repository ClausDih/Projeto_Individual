var database = require("../database/config")

console.log("Cheguei no model")

function listar(idUsuario) {
    var instrucao = `
        SELECT 
        r.pontos, 
        r.nivel, 
        t.descricao,
        t.nome AS trilha_sugerida
            FROM Usuario u
            JOIN Resultado r ON u.id = r.fk_usuario
            INNER JOIN (SELECT fk_usuario, MAX(dataJogo) AS ultima_data
                FROM Resultado
                GROUP BY fk_usuario) AS ultima_partida 
                ON r.fk_usuario = ultima_partida.fk_usuario 
                AND r.dataJogo = ultima_partida.ultima_data
            JOIN Trilhas t ON t.nivelNumero = r.pontos
            WHERE u.id = ${idUsuario};

    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function listarLinha(idUsuario) {
    console.log("1 - Cheguei no models da linha: /n");
    var instrucao = `
        SELECT r.pontos,
        r.dataJogo
            FROM Resultado r
            JOIN Usuario u
            ON u.id = r.fk_usuario
            WHERE u.id = 1
            ORDER BY dataJogo ASC;

    `;
    
    console.log("Executando instrução SQL: \n" + instrucao);

    return database.executar(instrucao);
}



module.exports = {
    listar,
    listarLinha
};
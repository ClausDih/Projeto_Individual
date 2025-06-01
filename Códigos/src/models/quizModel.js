var database = require("../database/config");

async function quizTrilha(titulo, fk_Usuario, fk_Trilhas, pontos, nivel) {
    const dataJogo = new Date().toISOString().slice(0, 19).replace('T', ' ');

    try {
        //Inserir o Quiz e obter o ID gerado
        const insertQuizSql = `INSERT INTO Quiz (titulo) VALUES ('${titulo}');`;
        const quizResult = await database.executar(insertQuizSql);

        const idQuiz = quizResult.insertId; // pega o ID gerado automaticamente

        //Inserir o Resultado usando o ID do quiz
        const insertResultadoSql = `
            INSERT INTO Resultado (fk_usuario, fk_quiz, fk_Trilhas, dataJogo, pontos, nivel)
            VALUES (${fk_Usuario}, ${idQuiz}, ${fk_Trilhas}, '${dataJogo}', ${pontos}, '${nivel}');
        `;

        console.log("Executando instrução SQL:\n" + insertResultadoSql);
        return await database.executar(insertResultadoSql);
    } catch (erro) {
        console.error("Erro ao executar quizTrilha:", erro);
        throw erro;
    }
}

module.exports = {
    quizTrilha
};
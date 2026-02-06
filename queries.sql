-- Chamados em aberto
SELECT * FROM chamados WHERE status = 'Aberto';

-- Quantidade de chamados por status
SELECT status, COUNT(*) 
FROM chamados
GROUP BY status;

-- Chamados por setor
SELECT u.setor, COUNT(c.id_chamado)
FROM usuarios u
JOIN chamados c ON u.id_usuario = c.id_usuario
GROUP BY u.setor;

-- Histórico de atendimentos
SELECT c.id_chamado, a.tecnico, a.observacao
FROM chamados c
JOIN atendimentos a ON c.id_chamado = a.id_chamado;

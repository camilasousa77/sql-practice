-- Objetivo:
-- Analisar usuários distintos por canal e dispositivo
-- Considerando canais Organic e Paid em junho de 2024

SELECT
    canal,
    dispositivo,
    COUNT(DISTINCT user_id) AS usuarios_distintos
FROM eventos_marketing
WHERE canal IN ('Organic', 'Paid')
  AND data_evento BETWEEN '2024-06-01' AND '2024-06-30'
GROUP BY canal, dispositivo
HAVING COUNT(DISTINCT user_id) > 50
ORDER BY usuarios_distintos DESC;

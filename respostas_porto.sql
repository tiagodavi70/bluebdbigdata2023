-- Liste todos os cais:
SELECT * from cais;

-- Recuperar o nome de cada capitão de cada barco:
SELECT barco.nome AS nome_navio, capitao.nome AS nome_capitao
FROM barco, capitao
WHERE barco.capitao_id = capitao.id;

-- Recuperar quantos navios já atracaram em cada cais:
SELECT cais.empresa AS nome_cais, COUNT(atraque.barco_id) AS numero_navios_atracados
FROM cais, atraque
WHERE cais.id = atraque.cais_id
GROUP BY cais.id, cais.empresa;

-- Recuperar o número total de navios:
SELECT COUNT(*) AS numero_total_navios FROM barco;

-- Recuperar todos os navios com seus capitães:
SELECT barco.nome AS nome_navio, capitao.nome AS nome_capitao
FROM barco, capitao WHERE barco.capitao_id = capitao.id;
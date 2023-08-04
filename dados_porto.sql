

INSERT INTO `capitao` (`id`, `nome`) VALUES
   (1, 'João'),
   (2, 'Maria'),
   (3, 'Pedro'),
   (4, 'Ana'),
   (5, 'Carlos'),
   (6, 'Laura');

INSERT INTO `barco` (`id`, `nome`, `capitao_id`) VALUES
  (1, 'Barco A', 1),
  (2, 'Navio B', 2),
  (3, 'Iate C', 1),
  (4, 'Cruzeiro D', 3),
  (5, 'Barco X', 4),
  (6, 'Iate Y', 5),
  (7, 'Navio Z', 6),
  (8, 'Cruzeiro W', 4);
  
INSERT INTO `cais` (`id`, `empresa`) VALUES
  (1, 'Cais 1'),
  (2, 'Porto Ltda.'),
  (3, 'Docas S.A.'),
  (4, 'Porto Alegre Dock'),
  (5, 'Rio Harbor Company'),
  (6, 'Mega Docks Ltd.');
  
INSERT INTO `atraque` (`barco_id`, `cais_id`, `horario`) VALUES
  (1, 1, '2023-08-01 10:00:00'),
  (2, 2, '2023-08-02 11:30:00'),
  (3, 1, '2023-08-01 09:15:00'),
  (4, 3, '2023-08-02 14:45:00'),
  (8, 3, '2023-08-01 15:45:00'),
  (4, 3, '2023-08-03 18:45:00'),
  (5, 4, '2023-08-02 16:30:00'),
  (6, 5, '2023-08-02 17:20:00'),
  (7, 4, '2023-08-02 18:00:00'),
  (2, 4, '2023-08-03 18:00:00'),
  (6, 4, '2023-08-02 18:00:00'),
  (7, 4, '2023-08-02 18:00:00'),
  (1, 1, '2023-08-03 18:00:00'),
  (8, 6, '2023-08-02 19:30:00');
  
Select * from atraque;

-- Liste todos os cais
-- Busque o nome de cada capitão de cada barco
-- Recuperar quantos navios já atracaram em cada cais
-- Recuperar o número total de navios
-- Recuperar todos os navios com seus capitães

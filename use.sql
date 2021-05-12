CREATE USER IF NOT EXISTS 'vitorlavor'@'%' IDENTIFIED BY 'atividade';

CREATE DATABASE IF NOT EXISTS atividade;

ALTER DATABASE atividade
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

GRANT ALL PRIVILEGES ON atividade.* TO 'vitorlavor'@'%' IDENTIFIED BY 'atividade';
-- Banco e tabela da biblioteca
CREATE DATABASE biblioteca;
USE biblioteca;
 
CREATE TABLE livro (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100) NOT NULL,
  autor VARCHAR(60) NOT NULL,
  ano INT NOT NULL,
  quantidade INT NOT NULL,
  status VARCHAR(15) NOT NULL
);
                     
-- 8 livros
INSERT INTO livro (titulo, autor, ano, quantidade, status) VALUES
  ('Dom Casmurro', 'Machado de Assis', 1899, 3, 'Disponível'),
  ('O Cortiço', 'Aluísio Azevedo', 1890, 2, 'Emprestado'),
  ('Iracema', 'José de Alencar', 1865, 1, 'Disponível'),
  ('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 1881, 4, 'Disponível'),
  ('Vidas Secas', 'Graciliano Ramos', 1938, 0, 'Emprestado'),
  ('Capitães da Areia', 'Jorge Amado', 1937, 2, 'Disponível'),
  ('A Hora da Estrela', 'Clarice Lispector', 1977, 1, 'Emprestado'),
  ('O Alienista', 'Machado de Assis', 1882, 5, 'Disponível');
  
  UPDATE livro SET status = 'Disponivel', quantidade = 1 WHERE id = 5;
  
  SET SQL_SAFE_UPDATES=0;
  UPDATE livro SET quantidade = quantidade + 2 WHERE autor = 'Machado de Assis'; 
  
  DELETE FROM livro WHERE  id= 3;
  
SELECT titulo FROM livro WHERE status = 'emprestado'  AND ano < 1900; 
DELETE FROM livro WHERE status = 'emprestado' AND ano < 1900;   

SELECT titulo FROM livro 
WHERE status = 'disponivel'; 

SELECT SUM(quantidade) FROM livro; 
SELECT MAX(ano) FROM livro;
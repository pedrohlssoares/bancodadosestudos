/*Atividade SELECT*/

/*Atividade 1*/
/*a) - Todos os estádios.*/
SELECT * FROM estadios;
/*b) - Somente os camisa 10, em ordem alfabética.*/
SELECT * FROM jogadores WHERE numero = 10 ORDER BY nome ASC;
/*c) - Todos os atacantes(posição) do Brasil(selecao)*/
SELECT * FROM jogadores WHERE posicao = "atacante" and selecao = 25;
/*d) - Todos os goleiros(posição) do Brasil, Alemanha, Argentina e Inglaterra (selecao) */
SELECT * FROM jogadores WHERE posicao = "goleiro" and selecao in (25, 19, 9, 5); 
/*e) - Todas as seleções cuja a segunda letra seja (a), usa-se o LIKE, "_" significa pula essa letra
e o "%" significa infinto após ou antes.*/
SELECT * FROM selecoes WHERE nome LIKE '_A%';
/*f) - Todas as seleções que começam com sílaba 'Po%'*/
SELECT * FROM selecoes WHERE nome LIKE 'Po%';
/*g) - Todas as seleções dos grupos A e B.*/
SELECT * FROM selecoes WHERE grupo IN ('A', 'B');

/*Atividade 2*/

/*a) - Uso da cláusula DISTICT para evitar repetições. - Idade dos jogadores*/
SELECT DISTINCT idade FROM jogadores ORDER BY idade ASC;
/*b) - Seleciona o objeto de contagem (coluna), chama a função count(*), após isso adiciona o AS (nomeie)
depois adiciona o FROM(tabela) e como será agrupado a contagem, usa-se GROUP BY (coluna de contagem).*/
SELECT posicao, count(*) AS quantidade FROM jogadores GROUP BY posicao;
/*c) - Média de idade por posição, usa a função AVG(coluna) para obter a média, usa o AS para nomear
essa nova coluna com valor novo, FROM da tabela, e GROUP BY (ordena por) [coluna]*/
SELECT posicao, avg(idade) AS mediaIdade FROM jogadores  GROUP BY posicao;
/*d) - Jogador mais velho de cada seleção. uso da função - max() para obter a idade máxima por grupo (selecao)*/
SELECT selecao, nome, max(idade) AS maisVelho FROM jogadores GROUP BY selecao;
/*e) - Jogador mais novo de cada seleção*/
SELECT selecao, nome, min(idade) AS maisNovo FROM jogadores GROUP BY selecao;
/*f) - Código das seleções cuja soma das idades dos jogadores seja maior que 300
USA-SE [having] em caso de sum(), e deve usar o GROUP BY.*/
SELECT selecao, sum(idade) AS somaIdades FROM jogadores GROUP BY selecao HAVING sum(idade) > 300;
/*g) - Nome dos jogadores com idade entre 23 e 27 anos - uso do Between(entre) no WHERE*/
SELECT nome, idade FROM jogadores WHERE idade BETWEEN 23 and 27;
/*h) - Quantidade de jogadores com idade diferente de 25 anos*/
SELECT count(idade) AS quantidade FROM jogadores WHERE idade <> 25;
/*h) - Quantidade de jogadores com idade diferente de 25 anos*/

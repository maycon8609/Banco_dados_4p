/* AVG == retorna a media( soma de todos os valores / quantidade de tupulas )  */
/* COUNT == retorna a quantidade de tupulas  */
/* SUM == retorna a soma de todos os atributos da coluna selecionada */
select avg(qtd) as media, count(*) as tupulas, sum(qtd) as total from itens_da_venda;

/* MIN == traz o menor valor || MAX == traz o maior valor */
select max(qtd) as max_qtd, min(qtd) as min_qtd from itens_da_venda;
select * from itens_da_venda;

select min(data) as menor_data, max(data) as maior_data from venda;
select * from venda;


/* Quando se trata de String pega por ordem alfabetica, EX:. A < c  */
select min(nome) as menor, max(nome) as maior from cliente;
select * from cliente;

/* GROUP BY == neste caso especifico traz a quantidade de vendas realizadas de cada livro(idlivro = x = qtd x) */
select * from itens_da_venda;
select idlivro, sum(qtd) from itens_da_venda group by idlivro;

select * from venda;
select total, idcliente, count(*) from venda group by total, idcliente;

/* IN == */
select sum(qtd) from itens_da_venda where idlivro in (select idlivro from livro where titulo like '%harry%');


/* UNION ==  */
select * from autor;
select * from cliente;
select idautor, nome, 1 from autor union select idcliente, nome, 2 from cliente;

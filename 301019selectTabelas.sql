/* Relação entre duas ou mais tabelas com filtros */
select autor.idautor, autor.nome, livro.idlivro, livro.titulo, genero.descricao, 
	sum(itens_da_venda.qtd) as quantidade
	from autor, escreve, livro, genero, itens_da_venda
	where autor.idautor = escreve.idautor and
	  livro.idlivro = escreve.idlivro and
      itens_da_venda.idlivro = livro.idlivro and
      livro.idgenero = genero.idgenero
	group by autor.idautor, autor.nome, livro.idlivro, livro.titulo, genero.descricao
    order by idautor, quantidade;

/* Join */
/* inner join = trazer todos se existir nos dois lados*/
/* left join =  trazer todos do lados esquerdo */
/* right join = trazer todos do lado direito */
/* full join = */
select * from escreve inner join autor on escreve.idautor = autor.idautor
		inner join livro on escreve.idlivro = livro.idlivro;
        
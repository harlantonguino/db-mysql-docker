#1-2
select BillingCountry as Pais, count(InvoiceId) as QfActuras
from invoice
group by Pais 
order by QfActuras desc;

#3
select BillingCity as Ciudad, count(InvoiceId) as QfActuras
from invoice
group by Ciudad 
order by QfActuras desc;

#4
select c.CustomerId, concat(c.FirstName, " ", c.LastName) as Cliente, sum(i.Total) as MontoGastado
from customer c
left join invoice i on c.CustomerId = i.CustomerId 
group by c.CustomerId, Cliente
order by MontoGastado desc;

#5
select concat(c.FirstName, " ", c.LastName) as Cliente, c.Email as Correo
from customer c
left join invoice i on c.CustomerId = i.CustomerId 
left join invoiceline il on i.InvoiceId = il.InvoiceId 
left join track t on il.TrackId = t.TrackId 
left join genre g on t.GenreId = g.GenreId
where g.Name = 'Rock'
order by Cliente;

#6
select distinct a.Name as Artista
from artist a
left join album al on a.ArtistId = al.ArtistId 
left join track t on al.AlbumId = t.AlbumId 
left join genre g on t.GenreId = g.GenreId
where g.Name = 'Rock'
order by Artista;

#7
select a.Name as Artista, g.Name as Genero, sum(i.Total) as Ventas
from artist a
left join album al on a.ArtistId = al.ArtistId 
left join track t on al.AlbumId = t.AlbumId 
left join genre g on t.GenreId = g.GenreId
left join invoiceline il on t.TrackId = il.TrackId
left join invoice i on il.InvoiceId = i.InvoiceId
group by Artista, Genero
order by Ventas desc;

#8
select BillingCountry  as Pais, sum(Total) as TotalGasto
from invoice
group by Pais
having Pais = 'USA';

#9
select g.Name as Genero, sum(Total) as TotalGasto
from invoice i 
left join invoiceline il on i.InvoiceId = il.InvoiceId 
left join track t on il.TrackId = t.TrackId 
left join genre g on t.GenreId = g.GenreId
group by Genero
order by TotalGasto desc;

#10
select Country as Pais, count(CustomerId) as NumeroClientes
from customer
group by Pais
order by NumeroClientes desc;

#11
select g.Name as Genero, count(TrackId) as NumeroCanciones
from track t  
left join genre g on t.GenreId = g.GenreId
group by Genero
order by NumeroCanciones desc



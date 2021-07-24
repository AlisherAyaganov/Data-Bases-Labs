select distinct title, AVG(stars) AS
    avgstars FROM movies JOIN(Rating join Reviewer using(rID)) using(mID)
group by title
order by avgstars DESC, title;

select distinct title, MIN(stars) from movies join Rating
using(mID)
group by title
order by title;

create materialized view as As select title from movies
where mID not in(select mID from rating);

create role SLD login;
grant select, update on as to SLD;
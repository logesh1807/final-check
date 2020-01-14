-- Include table data insertion, updation, deletion and select scripts

----------------------------------------------------------------------
-- Adding movies in movie_list table--------------------------------------
----------------------------------------------------------------------

insert into movie_list
values
(1, 'Avatar', 2787965087, 'Yes', '2017-03-15', 'Science Fiction','Yes'),
(2, 'The Avengers', 1518812988, 'Yes', '2017-12-23', 'Superhero','No'),
(3, 'Titanic', 2187463944, 'Yes', '2017-08-21', 'Romance', 'No'),
(4, 'Jurassic World', 1671713208, 'No', '2017-07-02','Science Fiction', 'Yes'),
(5, 'Avatar', 2750760348, 'Yes', '2022-11-02', 'Superhero', 'Yes');


----------------------------------------------------------------------
-- Insert values in user----------------------------------------------
----------------------------------------------------------------------

insert into user(us_name) values ('Jack'),('Jhon');

----------------------------------------------------------------------
-- Display all data from user-----------------------------------------
----------------------------------------------------------------------

select mo_title as Title,
mo_boxoffice as BoxOffice,
mo_active as Active,
mo_date_of_launch as DateOfLaunch ,
mo_genre as Genre,
mo_has_teaser as HasTeaser from movie_list;

----------------------------------------------------------------------
-- customer movie list------------------------------------------------
----------------------------------------------------------------------

select mo_title, mo_has_teaser, mo_boxoffice, mo_genre 
from movie_list
where mo_active ='yes' and mo_date_of_launch <= (curdate());

----------------------------------------------------------------------
-- Insert values in favorite------------------------------------------
----------------------------------------------------------------------

insert into favorite(ft_us_id,ft_mo_id) values (1,1);
insert into favorite(ft_us_id,ft_mo_id) values (1,3);
insert into favoirte(ft_us_id,ft_mo_id) values (1,3);
insert into favorite(ft_us_id,ft_mo_id) values (1,3);

----------------------------------------------------------------------
-- View favorites-----------------------------------------------------
----------------------------------------------------------------------

select mo_title,mo_has_teaser, mo_boxoffice  
from movie_list
inner join favorite 
on ft_mo_id=mo_id
where ft_us_id=1;

----------------------------------------------------------------------
-- View favorites total-----------------------------------------------
----------------------------------------------------------------------

select sum(mo_boxoffice) 
as Total from movie_list
inner join favorite 
on ft_mo_id=mo_id
where ft_us_id=1;

----------------------------------------------------------------------
-- Remove movies from favorite----------------------------------------
----------------------------------------------------------------------

delete from favorite 
where ft_us_id=1 and ft_id=4;

----------------------------------------------------------------------
-- View removed favorites-----------------------------------------------------
----------------------------------------------------------------------

select mo_title,mo_has_teaser, mo_boxoffice  
from movie_list
inner join favorite 
on ft_mo_id=mo_id
where ft_us_id=1;



select ft_id as FavoriteId,
ft_us_id as FavUserId,
ft_mo_id as FavMovieId from favorite;



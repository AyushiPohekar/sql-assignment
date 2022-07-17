          Lesson1

Select title from movies;
Select director from movies;
Select director,title from movies;
Select title,year from movies;
Select * from movies;

          Lesson2

Select * from movies where id=6;

Select * from movies
Where year between 2000 and 2010;

Select * from movies
Where year not between 2000 and 2010;

Select * from movies 
Limit 5;


         Lesson3

Select * from the movies
Where title like “%Toy Story%”;

Select * from the movies
Where director=”John Lasseter”;

Select * from the movies
Where director!=”John Lasseter”;


Select * from the movies
Where title like ”%Wall- %”;


         Lesson4

Select distinct director from movies
Order by director;

Select * from movies
Order by year desc
Limit 5;

Select * from movies
Order by title 
Limit 5;

Select * from movies
Order by title 
Limit 5 offset 5;

         Lesson5
Select * from North_american_cities
Where country=”Canada”;

Select * from North_american_cities
Where country=”United States”
Order by latitude desc;

SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC

Select * from North_american_cities
Where country=”Mexico”
Order by population desc
Limit 2;

Select * from North_american_cities
Where country=”United states”
Order by population desc
Limit 2 offset 2;

     Lesson 6
     
SELECT * FROM movies
INNER JOIN Boxoffice
ON Movies.id=BoxOffice.Movie_id;

SELECT * FROM movies
INNER JOIN Boxoffice
ON Movies.id=BoxOffice.Movie_id
where International_sales>Domestic_sales;

SELECT * FROM movies
INNER JOIN Boxoffice
ON Movies.id=BoxOffice.Movie_id
order by rating desc;

      EXERCISE 7
      
SELECT distinct building FROM employees;

SELECT * FROM BUILDINGS;

SELECT distinct Building_name, Role FROM Buildings
LEFT JOIN employees
on Building_name=Building;


       EXERCISE 8

SELECT name,role FROM employees
where building is null;


SELECT * FROM Buildings
LEFT JOIN Employees 
on Building_name=Building
WHERE Name IS NULL;

      Exercise 9

SELECT Title,(Domestic_sales+International_sales)/1000000  as total_sales_in_millions FROM movies 
inner join Boxoffice
on Id=Movie_id;

SELECT  Title,(Rating)*10  as percentage_ratings  FROM movies 
left join  Boxoffice
on Id=Movie_id;

SELECT * FROM Movies where year%2=0;

        Exercise 10
SELECT *, max(Years_employed) FROM employees;
SELECT*,AVG(Years_employed) FROM employees group by role;
SELECT *,sum(years_employed) FROM employees group by Building;

         Exercise 11
SELECT *, count(name) FROM employees
where role="Artist";

SELECT *,count(name) FROM employees group by role;
                                         OR
SELECT  role,count(role) FROM employees group by role;

SELECT *,sum(Years_employed) FROM employees where role="Engineer";


         Exercise 12
SELECT director,count(title) FROM movies
GROUP BY Director;

SELECT director,sum(Domestic_sales+International_sales)/1000000 as Totalsales FROM movies
inner join Boxoffice 
on Id=Movie_id
group by director;



        Exercise 13
        
INSERT INTO Movies
VALUES (4,"Toy story 4", "ayushi",2022,120)

INSERT INTO BoxOffice
(Movie_id,Rating,Domestic_sales,	International_sales)
VALUES (4,8.7,340000000,270000000);


      Exercise 14

UPDATE  movies 
SET DIRECTOR="John Lasseter"
WHERE Id=2;

UPDATE movies 
Set Year=1999
where title like "Toy Story 2";

UPDATE movies 
set title="Toy Story 3",director="Lee Unkrich"
where id=11;

        EXERCISE 15
Delete from movies where year < 2005;
Delete from movies where director="Andrew Stanton";

         EXERCISE 16
CREATE TABLE database (
    Name TEXT,
    Version float,
    Download_count INTEGER,
    );
    
    
           EXERCISE 17
ALTER TABLE Movies
ADD column Aspect_ratio FLOAT;

Alter table Movies
Add language TEXT 
Default "English";

         Exercise 18
DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS Boxoffice;











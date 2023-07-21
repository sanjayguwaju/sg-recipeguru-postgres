SELECT * FROM public.ingredients; -- Select everything from public.ingredients

-- Insert data into the ingredients table
INSERT INTO public.ingredients
(
  title,
  image
)
VALUES
(
  'not real 1',
  'delete.jpg'
),
(
  'not real 2',
  'delete.jpg'
);

DELETE
FROM ingredients
WHERE image = 'delete.jpg'
RETURNING *;  -- it will delete the row which has 'delete.jpg' and RETURNING will provide the data that has been deleted.


SELECT title
FROM public.ingredients; -- it will only provide title in the table


SELECT title
FROM public.ingredients
LIMIT 10; -- it will only provide me 10 data from title


SELECT title
FROM public.ingredients
LIMIT 10 OFFSET 10; -- it will provide only 10 data from title and then 10 data after that.


SELECT id, title, "type"
FROM ingredients
WHERE "type" <> 'fruit'; -- it will provide all the data from the table which has not fruit type.


SELECT *
FROM ingredients
WHERE id >= 10
   OR id <= 20
LIMIT 10; -- it will provide data between 10 and 20 from the ingredients table


SELECT *
FROM ingredients
ORDER BY id DESC
LIMIT 10; -- it will provide data ordered in descending order.


SELECT *
FROM ingredients
WHERE title LIKE '%pota%'; -- it will find the data from ingredients where title has matching words like pota


SELECT *
FROM ingredients
WHERE lower(title) LIKE '%pota%'; -- first it will lower all the title and then match words like pota

SELECT *
FROM ingredients
WHERE title ILIKE '%pOtA%'; -- it will show all the data matching words like pota without worrying any case sensetiveness.

SELECT *
FROM ingredients
WHERE concat(title, type) ILIKE '%fruit%'; -- it will show up all the data matching type fruit also with title of it.

SELECT *
FROM ingredients
WHERE lower(concat(title, type)) LIKE '%rryfru%'; -- it will match the strings rry fru in both title and type and show the data.

SELECT *
FROM ingredients
WHERE title ILIKE 'ch_rry'; -- it will match one character from title's string


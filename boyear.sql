create or replace function BOYEAR(theDate date)
returns date
language SQL
as
$$
    DATE_FROM_PARTS(year(theDate),1, 1)
$$;

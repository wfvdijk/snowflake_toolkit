create or replace function EOYEAR(theDate date)
returns date
language SQL
as
$$
    DATE_FROM_PARTS(year(theDate),12, 31)
$$;

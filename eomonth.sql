create or replace function EOMONTH(theDate date)
returns date
language SQL
as
$$
    DATEADD(day, -1, DATE_FROM_PARTS(year(theDate),month(theDate)+ 1, 1))
$$;


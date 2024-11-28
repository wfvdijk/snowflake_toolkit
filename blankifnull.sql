create or replace function BLANKIFNULL(tekst varchar)
returns varchar
AS
    $$
        select coalesce(tekst,'')
    $$
;

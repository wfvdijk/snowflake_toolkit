create or replace function NULLIFBLANK(tekst varchar)
returns varchar
AS
    $$
        select nullif(tekst,'')
    $$
;

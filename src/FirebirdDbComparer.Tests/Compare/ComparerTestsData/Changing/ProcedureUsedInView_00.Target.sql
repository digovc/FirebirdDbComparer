set term ^ ;

create procedure p (in_i int)
returns (out_i int)
as
begin
    out_i = in_i;
    suspend;
end^

set term ;^

create view v
as
select (select out_i from p(0)) as i from rdb$database;
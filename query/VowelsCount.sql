
select sum(
	case
		when LOWER(substr('Devaraju', LEVEL, 1))
			in ('a', 'e', 'i', 'o', 'u')
			then 1
			else 0
	end
) as vowel_count
from dual
connect by LEVEL <= LENGTH('Devaraju');



select character, count(*) as vowel_count
from (select substr('DEVARAJU', LEVEL, 1) as character,
        case
            when lower(substr('DEVARAJU', LEVEL, 1))
                in ('a', 'e', 'i', 'o', 'u')
                then 1
                else 0
        end as vowel_count
    from dual
    connect by level <= length('DEVARAJU')
)
where vowel_count = 1
group by character;



select lower(substr('Devaraju', LEVEL, 1)) as character,
    count(*) as vowel_count
from dual
connect by LEVEL <= LENGTH('Devaraju')
group by lower(substr('Devaraju', LEVEL, 1))
having lower(substr('Devaraju', min(LEVEL), 1))
    in ('a', 'e', 'i', 'o', 'u')
order by min(INSTR('devaraju', character));


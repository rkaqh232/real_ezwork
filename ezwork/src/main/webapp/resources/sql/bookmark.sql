drop table bookmark;

create table bookmark (
	m_bookmark number(1) CHECK (m_bookmark IN(1,0)),
	m_owner varchar2(30),
	m_code varchar2(30) references member(m_code) on delete cascade
);

select *
from bookmark;
select *
from member

select *
		from bookmark
		where m_owner = 'park'
		
select mem.M_CODE, bookmark.M_BOOKMARK		
from bookmark right join (select *
		         	from ( select rownum rnum, b.*
		                from (select * from member 
		                      where M_CODE != 'admin'
		                      order by M_CODE
		              		  )b
		          	   )
		         where rnum>=1 and rnum<=10) mem
on bookmark.m_code = mem.m_code
		
		




--ishladi ALhamdulillah--

select
  a.author_lastname,
  a.author_firstname,
  t.topic_id,
  t.topic_title,
  t.topic_summary,
  count(l.lecture_title) as lectures_count
from
  authors as a
join
  topics as t on t.author_id = a.author_id
left join
  lectures as l on l.topic_id = t.topic_id
group by
  a.author_lastname,
  a.author_firstname,
  t.topic_id,
  t.topic_title,
  t.topic_summary
;

--bu keyingi query yani maruzalar uchun--
select
  a.author_lastname,
  t.topic_title,
  array_agg(l.lecture_title) as lactures
from
  authors as a
join
  topics as t on t.author_id = a.author_id and t.topic_id = 2
left join
  lectures as l on l.topic_id = t.topic_id
group by
  a.author_lastname,
  t.topic_title
;


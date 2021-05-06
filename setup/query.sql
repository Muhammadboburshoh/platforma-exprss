-- author and topic 

select
  ARRAY_AGG(a.author_lastname),
  ARRAY_AGG(a.author_firstname),
  ARRAY_AGG(t.topic_id),
  ARRAY_AGG(t.topic_title),
  ARRAY_AGG(t.topic_summary),
  l.lecture_id
from
  topics as t
join
  authors as a on a.author_id = t.author_id
join
  lectures as l on l.topic_id = t.topic_id
group by
  l.lecture_id
;


select
  a.author_lastname,
  a.author_firstname,
  t.topic_id,
  t.topic_title,
  t.topic_summary
from
  topics as t
join
  authors as a on a.author_id = t.author_id
join
  lectures as l on l.topic_id = t.topic_id
group by
  author_lastname,
  author_firstname
;



-- mock data authors table

insert into authors (author_lastname, author_firstname) values ('Muhammad', 'Abdulloh');
insert into authors (author_lastname, author_firstname) values ('Umar', 'Abdullaev');
insert into authors (author_lastname, author_firstname) values ('A''zam', 'Abdusattorov');
insert into authors (author_lastname, author_firstname, author_about) values 
('Mirzohid', 'Abdusattorov', 'Mirzohid 1990-yili o''zbekistonnning samqrqand viloyatida tug''ilgan ');

--mock data topics table

insert into topics (topic_title, author_id) values ('American Gangster', 1);
insert into topics (topic_title, author_id) values ('Charlie: The Life and Art of Charles Chaplin', 2);
insert into topics (topic_title, author_id) values ('Doghouse', 3);
insert into topics (topic_title, author_id) values ('Tess', 4);
insert into topics (topic_title, author_id, topic_summary) values ('Another Gay Movie', 4, 'LOrem ipsum');
insert into topics (topic_title, author_id) values ('Ripley Under Ground', 1);
insert into topics (topic_title, author_id) values ('You''ve Been Trumped', 3);

--mock data lectures table

insert into lectures(
  lecture_title,
  lecture_audio,
  lecture_summary,
  lecture_durition,
  lecture_size,
) values
('acbajdk', lecture_audio, lecture_audio, lecture_audio, lecture_audio, lecture_audio)


insert into lectures(
  lecture_title,
  lecture_audio,
  lecture_summary,
  lecture_durition,
  lecture_size,
  topic_id
  ) values 
  ('1-darsga kirish', 'http://dummyimage.com/224x100.png/dddddd/000000', '1-darsga kirish haqida ma''limot berilgan', '4:23 ', 12, 1);

insert into lectures(
  lecture_title,
  lecture_audio,
  lecture_summary,
  lecture_durition,
  lecture_size,
  topic_id
  ) values 
  ('2-darsga kirish', 'http://dummyimage.com/224x100.png/dddddd/000000', '2-darsga kirish haqida ma''limot berilgan', '4:23 ', 12, 2);

insert into lectures(
  lecture_title,
  lecture_audio,
  lecture_summary,
  lecture_durition,
  lecture_size,
  topic_id
  ) values 
  ('3-darsga kirish', 'http://dummyimage.com/224x100.png/dddddd/000000', '3-darsga kirish haqida ma''limot berilgan', '4:23 ', 12, 3);


insert into lectures(
  lecture_title,
  lecture_audio,
  lecture_summary,
  lecture_durition,
  lecture_size,
  topic_id
  ) values 
  ('4-darsga kirish', 'http://dummyimage.com/224x100.png/dddddd/000000', '4-darsga kirish haqida ma''limot berilgan', '4:23 ', 15.3, 4);
  

insert into lectures(
  lecture_title,
  lecture_audio,
  lecture_summary,
  lecture_durition,
  lecture_size,
  topic_id
  ) values 
  ('5-darsga kirish', 'http://dummyimage.com/224x100.png/dddddd/000000', '5-darsga kirish haqida ma''limot berilgan', '4:23 ', 12.3, 1);


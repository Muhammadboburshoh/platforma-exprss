var express = require('express');
var router = express.Router();

const { rows } = require("../util/database")

const topicsSQL = `
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
`

const lacturesSQL = `
  select
    a.author_firstname,
    a.author_lastname,
    l.lecture_id,
    l.lecture_title,
    l.lecture_audio,
    l.lecture_summary,
    l.lecture_durition,
    l.lecture_size,
    l.lecture_islike
  from
    lectures as l
  join
    topics as t on t.topic_id = l.topic_id and l.topic_id = $1
  join
    authors as a on a.author_id = t.author_id
`

/* GET users listing. */
router.get('/', async function(req, res, next) {

  const topics = await rows(topicsSQL)

  res.send(topics);
});

router.get('/:id', async function(req, res, next) {


  const lactures = await rows(lacturesSQL, req.params.id)

  res.send(lactures);
});

module.exports = router;

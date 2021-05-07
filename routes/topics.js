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

/* GET users listing. */
router.get('/', async function(req, res, next) {

  const topics = await rows(topicsSQL)

  res.send(topics);
});

module.exports = router;

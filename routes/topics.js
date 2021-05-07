var express = require('express');
var router = express.Router();

const { rows } = require("../util/database")
const { row } = require("../util/database")

// get topics SQL query
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

// get lactures SQL query
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

const createTopicSQL = `
  insert into topics(author_id, topic_title, topic_summary) values
  ($1, $2, $3)
  returning topic_id, topic_title, topic_summary
`


/* GET topics listing. */
router.get('/', async function(req, res, next) {

  const topics = await rows(topicsSQL)

  res.send(topics);
});

/*
  POST topic item
*/

router.post('/', async (req, res) => {

  const { authorId, topicTitle, topicSummary} = req.body

  res.send('OK')
  try {
    const topicRow = await row(createTopicSQL, authorId, topicTitle, topicSummary)
    res.send(topicRow)
  }
  catch(e) {
    res.status(400).end()
    console.log(e); 
  }
})

// router.delete()










router.get('/:id', async function(req, res, next) {


  const lactures = await rows(lacturesSQL, req.params.id)

  res.send(lactures);
});

module.exports = router;

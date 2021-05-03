var express = require('express');
var router = express.Router();

const { rows } = require("../util/database")

const topicsSQL = `
select * from topics
`

/* GET users listing. */
router.get('/', async function(req, res, next) {

  const topics = await rows(topicsSQL)

  res.send(topics);
});

module.exports = router;

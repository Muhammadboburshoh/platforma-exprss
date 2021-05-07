var express = require('express');
var router = express.Router();

const { rows } = require("../util/database")

const lacturesSQL = `
select * from lectures
`

/* GET users listing. */
router.get('/', async function(req, res, next) {

  const lectures = await rows(lacturesSQL)

  res.send(lectures);
});

module.exports = router;

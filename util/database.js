const { Pool } = require('pg')

const pool = new Pool({
  host: 'localhost',
  user: 'muhammadbobur',
  password: '1111',
  database: 'platforma',
  port: 5432
})

const rows = async (SQL, ...params) => {

  const connect = await pool.connect()

  try {
    const { rows } = await connect.query(SQL, params)

    return rows
  }
  catch (e) {
    throw e
  }
  finally {
    connect.release()
  }
}

const row = async (SQL, ...params) => {

	const client = await pool.connect()

	try {
		const { rows: [row] } = await client.query(SQL, params)

		return row
	}
	catch(e) {
		throw e
	}
	finally {
		client.release()
	}
}

module.exports.rows = rows
module.exports.row = row
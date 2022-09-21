// Require the fastify framework and instantiate it
const fastify = require('fastify')({
	logger: true
})

// Require external modules
const mongoose = require('mongoose')

// Connect to DB
mongoose
	.connect('mongodb://127.0.0.1/rubble_database')
	.then(() => fastify.log.info(`Server connected to mongodb`))
	.catch(err => fastify.log.info(`Failed to connect to mongodb`))

module.exports = fastify
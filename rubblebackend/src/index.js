// Import Server
const fastify = require('./server.js')
const cors = require("@fastify/cors")
fastify.register(cors, { 
  
})

// Run the server!
const start = async () => {
	try {
		await fastify.listen({port: 3000})
		fastify.log.info(`server listening on ${fastify.server.address().port}`)
	} catch (err) {
		fastify.log.error(err)
		process.exit(1)
	}
}
start()


const mercurius = require('mercurius')

// Import GraphQL Schema
const schema = require('./schema')

// Register Fastify GraphQL
fastify.register(mercurius, {
	schema,
	graphiql: true
})
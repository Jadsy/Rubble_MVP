// Import External Dependancies
const graphql = require('graphql')

// Destructure GraphQL functions
const {
	GraphQLSchema,
	GraphQLObjectType,
	GraphQLString,
	GraphQLInt,
	GraphQLID,
	GraphQLList,
	GraphQLNonNull
} = graphql

const gameDataTypes = require('../objectTypes/gameData')
const realtimeDataTypes = require('../objectTypes/realtimeData')
const userDataTypes = require('../objectTypes/userData')


// Define Root Query
exports.RootQuery = new GraphQLObjectType({
	name: 'RootQueryType',
	fields: {
		// car: {
		// 	type: carType,
		// 	args: { id: { type: GraphQLID } },
		// 	async resolve(parent, args) {
		// 		return await carController.getSingleCar(args)
		// 	}
		// },
		// cars: {
		// 	type: new GraphQLList(carType),
		// 	async resolve(parent, args) {
		// 		return await carController.getCars()
		// 	}
		// },
		// owner: {
		// 	type: ownerType,
		// 	args: { id: { type: GraphQLID } },
		// 	async resolve(parent, args) {
		// 		return await ownerController.getSingleOwner(args)
		// 	}
		// },
		// service: {
		// 	type: serviceType,
		// 	args: { id: { type: GraphQLID } },
		// 	async resolve(parent, args) {
		// 		return await serviceController.getSingleService(args)
		// 	}
		// }
	}
})
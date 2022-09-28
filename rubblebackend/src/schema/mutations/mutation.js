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

// Define Mutations
exports.Mutations = new GraphQLObjectType({
	name: 'Mutations',
	fields: {
		// addCar: {
		// 	type: carType,
		// 	args: {
		// 		title: { type: new GraphQLNonNull(GraphQLString) },
		// 		brand: { type: new GraphQLNonNull(GraphQLString) },
		// 		price: { type: GraphQLString },
		// 		age: { type: GraphQLInt },
		// 		owner_id: { type: GraphQLID }
		// 	},
		// 	async resolve(parent, args) {
		// 		const data = await carController.addCar(args)
		// 		return data
		// 	}
		// },
		// editCar: {
		// 	type: carType,
		// 	args: {
		// 		id: { type: new GraphQLNonNull(GraphQLID) },
		// 		title: { type: new GraphQLNonNull(GraphQLString) },
		// 		brand: { type: new GraphQLNonNull(GraphQLString) },
		// 		price: { type: new GraphQLNonNull(GraphQLString) },
		// 		age: { type: new GraphQLNonNull(GraphQLInt) },
		// 		owner_id: { type: GraphQLID }
		// 	},
		// 	async resolve(parent, args) {
		// 		const data = await carController.updateCar(args)
		// 		return data
		// 	}
		// },
		// deleteCar: {
		// 	type: carType,
		// 	args: {
		// 		id: { type: new GraphQLNonNull(GraphQLID) }
		// 	},
		// 	async resolve(parent, args) {
		// 		const data = await carController.deleteCar(args)
		// 		return data
		// 	}
		// }
	}
})
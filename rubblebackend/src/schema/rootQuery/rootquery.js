// Import External Dependancies
const graphql = require('graphql')

// Destructure GraphQL functions
const {
	GraphQLObjectType,
	GraphQLID
} = graphql

const maffiaGameController = require('../../controllers/realtimeData/MaffiaGame/GameController')


// Define Root Query
exports.RootQuery = new GraphQLObjectType({
	name: 'RootQueryType',
	fields: {
		maffiaGame:{
			type: maffiaGameType,
			args: { id: { type: GraphQLID } },
			async resolve(parent, args) {
				return await maffiaGameController.getSingleMaffiaGame(args)
			}
		},
	}
})
// Import External Dependancies
const graphql = require('graphql')

// Destructure GraphQL functions
const {
	GraphQLObjectType,
	GraphQLID
} = graphql

const maffiaGameController = require('../../controllers/realtimeData/MaffiaGame/GameController')
const realtimeData = require('../objectTypes/realtimeData')
const mafiaController = require('../../controllers/realtimeData/MaffiaGame/MafiaController')
// Define Root Query
exports.RootQuery = new GraphQLObjectType({
	name: 'RootQueryType',
	fields: {
		maffiaGame:{
			type: realtimeData.maffiaGameType,
			args: { id: { type: GraphQLID } },
			async resolve(parent, args) {
				return await maffiaGameController.getSingleMaffiaGame(args)
			}
		},
	}
})
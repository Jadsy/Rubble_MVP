// Import External Dependancies
const graphql = require('graphql')

// Destructure GraphQL functions
const {
	GraphQLObjectType,
	GraphQLString,
	GraphQLID,
	GraphQLBoolean
} = graphql

exports.answerType = new GraphQLObjectType({
    name: 'User',
    fields: () => ({
        _id: { type: GraphQLID },
        username: { type: GraphQLString },
		email: { type: GraphQLString },
		password: { type: GraphQLString },
		avatarURL: { type: GraphQLString },
		isGuest: { type: GraphQLBoolean },
    })
})
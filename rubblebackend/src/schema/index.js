// Import External Dependancies
const graphql = require('graphql')

// Destructure GraphQL functions
const {
	GraphQLSchema
} = graphql

const rootQuery = require('./rootQuery/rootquery')
const mutations = require('./mutations/mutation')

// Export the schema
module.exports = new GraphQLSchema({
	query: rootQuery.RootQuery,
	mutation: mutations.Mutations
})
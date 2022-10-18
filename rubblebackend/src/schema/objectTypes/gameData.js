// Import External Dependancies
const graphql = require('graphql')

// Destructure GraphQL functions
const {
	GraphQLObjectType,
	GraphQLString,
	GraphQLID,
	GraphQLList,
	GraphQLBoolean
} = graphql

// Chameleon Game controllers
const chameleonCategoryController = require('../../controllers/gameData/ChameleonGame/ChameleonCategoryController')

// DeceiverGame controllers
const deceiverCategoryController = require('../../controllers/gameData/DeceiverGame/DeceiverCategoryController')

exports.answerType = new GraphQLObjectType({
    name: 'Answer',
    fields: () => ({
        _id: { type: GraphQLID },
        answer: { type: GraphQLString },
		category_id: { type: GraphQLID },
		category: {
			type: this.chameleonCategoryType,
			async resolve(parent, args) {
				return await chameleonCategoryController.getSingleChameleonCategory({ id: parent.category_id })
			}
		}

    })
})

exports.chameleonCategoryType = new GraphQLObjectType({
    name: 'ChameleonCategory',
    fields: () => ({
        _id: { type: GraphQLID },
        title: { type: GraphQLString },
		answers: {
			type: new GraphQLList(this.answerType),
			async resolve(parent, args) {
				return await chameleonCategoryController.getCategoryAnswers({ id: parent._id })
			}
		}
    })
})

exports.questionType = new GraphQLObjectType({
    name: 'Question',
    fields: () => ({
        _id: { type: GraphQLID },
		question: { type: GraphQLString },
        answer: { type: GraphQLString },
		category_id: { type: GraphQLID },
		category: {
			type: this.deceiverCategoryType,
			async resolve(parent, args) {
				return await deceiverCategoryController.getSingleDeceiverCategory({ id: parent.category_id })
			}
		}

    })
})

exports.deceiverCategoryType = new GraphQLObjectType({
    name: 'DeceiverCategory',
    fields: () => ({
        _id: { type: GraphQLID },
        title: { type: GraphQLString },
		answers: {
			type: new GraphQLList(this.answerType),
			async resolve(parent, args) {
				return await deceiverCategoryController.getCategoryQuestions({ id: parent._id })
			}
		}
    })
})

exports.roleType = new GraphQLObjectType({
    name: 'Role',
    fields: () => ({
        _id: { type: GraphQLID },
        title: { type: GraphQLString },
		canKill: { type: GraphQLBoolean },
		canHeal: { type: GraphQLBoolean },
		canDetect: { type: GraphQLBoolean }
    })
})
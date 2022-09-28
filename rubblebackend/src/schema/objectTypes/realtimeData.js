// Import External Dependancies
const graphql = require('graphql')

// Destructure GraphQL functions
const {
	GraphQLObjectType,
	GraphQLID,
	GraphQLBoolean
} = graphql

const roleController = require('../../controllers/gameData/MaffiaGame/RoleController')
const userController = require("../../controllers/userData/UserController")

exports.civilianType = new GraphQLObjectType({
    name: 'Civilian',
    fields: () => ({
        _id: { type: GraphQLID },
        is_alive: { type: GraphQLBoolean },
		role_id: { type: GraphQLID },
        user_id: { type: GraphQLID }, 
		role: {
			type: roleType,
			async resolve(parent, args) {
				return await roleController.getSingleRole({ id: parent.role_id })
			}
		},
        user: {
            type: userType,
            async resolve(parent, args) {
                return await userController.getSingleUser({ id: parent.user_id })
            }
        }
    })
})

exports.doctorType = new GraphQLObjectType({
    name: 'Doctor',
    fields: () => ({
        _id: { type: GraphQLID },
        is_alive: { type: GraphQLBoolean },
		role_id: { type: GraphQLID },
        user_id: { type: GraphQLID }, 
		role: {
			type: roleType,
			async resolve(parent, args) {
				return await roleController.getSingleRole({ id: parent.role_id })
			}
		},
        user: {
            type: userType,
            async resolve(parent, args) {
                return await userController.getSingleUser({ id: parent.user_id })
            }
        }
    })
})

exports.policeType = new GraphQLObjectType({
    name: 'Police',
    fields: () => ({
        _id: { type: GraphQLID },
        is_alive: { type: GraphQLBoolean },
		role_id: { type: GraphQLID },
        user_id: { type: GraphQLID }, 
		role: {
			type: roleType,
			async resolve(parent, args) {
				return await roleController.getSingleRole({ id: parent.role_id })
			}
		},
        user: {
            type: userType,
            async resolve(parent, args) {
                return await userController.getSingleUser({ id: parent.user_id })
            }
        }
    })
})

exports.mafiaType = new GraphQLObjectType({
    name: 'Mafia',
    fields: () => ({
        _id: { type: GraphQLID },
        is_alive: { type: GraphQLBoolean },
		role_id: { type: GraphQLID },
        user_id: { type: GraphQLID }, 
		role: {
			type: roleType,
			async resolve(parent, args) {
				return await roleController.getSingleRole({ id: parent.role_id })
			}
		},
        user: {
            type: userType,
            async resolve(parent, args) {
                return await userController.getSingleUser({ id: parent.user_id })
            }
        }
    })
})

const narratorType = new GraphQLObjectType({
    name: 'Narrator',
    fields: () => ({
        _id: { type: GraphQLID },
		role_id: { type: GraphQLID },
        user_id: { type: GraphQLID }, 
		role: {
			type: roleType,
			async resolve(parent, args) {
				return await roleController.getSingleRole({ id: parent.role_id })
			}
		},
        user: {
            type: userType,
            async resolve(parent, args) {
                return await userController.getSingleUser({ id: parent.user_id })
            }
        }
    })
})
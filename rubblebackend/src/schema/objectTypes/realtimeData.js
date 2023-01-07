// Import External Dependancies
const graphql = require('graphql')

// Destructure GraphQL functions
const {
	GraphQLObjectType,
	GraphQLID,
	GraphQLBoolean,
    GraphQLInt,
    GraphQLList
} = graphql

const roleController = require('../../controllers/gameData/MaffiaGame/RoleController')
const userController = require("../../controllers/userData/UserController")

//Maffiagame controllers
const maffiaGameController = require('../../controllers/realtimeData/MaffiaGame/GameController')
const gameData = require('./gameData')
const userData = require('./userData')

exports.civilianType = new GraphQLObjectType({
    name: 'Civilian',
    fields: () => ({
        _id: { type: GraphQLID },
        is_alive: { type: GraphQLBoolean },
		role_id: { type: GraphQLID },
        user_id: { type: GraphQLID }, 
        maffia_game_id: { type: GraphQLID },
        maffia_game: {
            type: this.maffiaGameType,
			async resolve(parent, args) {
				return await maffiaGameController.getSingleMaffiaGame({ id: parent.maffia_game_id })
			}
        },
		role: {
			type: gameData.roleType,
			async resolve(parent, args) {
				return await roleController.getSingleRole({ id: parent.role_id })
			}
		},
        user: {
            type: userData.userType,
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
        maffia_game_id: { type: GraphQLID },
        maffia_game: {
            type: this.maffiaGameType,
			async resolve(parent, args) {
				return await maffiaGameController.getSingleMaffiaGame({ id: parent.maffia_game_id })
			}
        },
		role: {
			type: gameData.roleType,
			async resolve(parent, args) {
				return await roleController.getSingleRole({ id: parent.role_id })
			}
		},
        user: {
            type: userData.userType,
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
        maffia_game_id: { type: GraphQLID },
        maffia_game: {
            type: this.maffiaGameType,
			async resolve(parent, args) {
				return await maffiaGameController.getSingleMaffiaGame({ id: parent.maffia_game_id })
			}
        },
		role: {
			type: gameData.roleType,
			async resolve(parent, args) {
				return await roleController.getSingleRole({ id: parent.role_id })
			}
		},
        user: {
            type: userData.userType,
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
        maffia_game_id: { type: GraphQLID },
        maffia_game: {
            type: this.maffiaGameType,
			async resolve(parent, args) {
				return await maffiaGameController.getSingleMaffiaGame({ id: parent.maffia_game_id })
			}
        },
		role: {
			type: gameData.roleType,
			async resolve(parent, args) {
				return await roleController.getSingleRole({ id: parent.role_id })
			}
		},
        user: {
            type: userData.userType,
            async resolve(parent, args) {
                return await userController.getSingleUser({ id: parent.user_id })
            }
        }
    })
})

exports.narratorType = new GraphQLObjectType({
    name: 'Narrator',
    fields: () => ({
        _id: { type: GraphQLID },
		role_id: { type: GraphQLID },
        user_id: { type: GraphQLID },
        maffia_game_id: { type: GraphQLID },
        maffia_game: {
            type: this.maffiaGameType,
			async resolve(parent, args) {
				return await maffiaGameController.getSingleMaffiaGame({ id: parent.maffia_game_id })
			}
        },
		role: {
			type: gameData.roleType,
			async resolve(parent, args) {
				return await roleController.getSingleRole({ id: parent.role_id })
			}
		},
        user: {
            type: userData.userType,
            async resolve(parent, args) {
                return await userController.getSingleUser({ id: parent.user_id })
            }
        }
    })
})

exports.maffiaGameType = new GraphQLObjectType({
    name: 'MaffiaGame',
    fields: () => ({
        _id: { type: GraphQLID },
        lobby_code: { type: GraphQLInt },
        is_open: {type: GraphQLBoolean },
        owner_id: { type: GraphQLID },
        owner: {
            type: userData.userType,
            async resolve(parent, args) {
                return await userController.getSingleUser({ id: parent.owner_id })
            }
        },
        civilians:{
            type: new GraphQLList(this.civilianType),
            async resolve(parent, args) {
                return await maffiaGameController.getGameCivilians({ id: parent._id })
            }
        },
        mafias:{
            type: new GraphQLList(this.mafiaType),
            async resolve(parent, args) {
                return await maffiaGameController.getGameMafias({ id: parent._id })
            }
        },
        doctor:{
            type: this.doctorType,
            async resolve(parent, args) {
                return await maffiaGameController.getGameDoctor({ id: parent._id })
            }
        },
        narrator:{
            type: this.narratorType,
            async resolve(parent, args) {
                return await maffiaGameController.getGameNarrator({ id: parent._id })
            }
        },
        police:{
            type: this.policeType,
            async resolve(parent, args) {
                return await maffiaGameController.getGamePolice({ id: parent._id })
            }
        },
        users:{
            type: new GraphQLList(userData.userType),
            async resolve(parent, args) {
                return await maffiaGameController.getGameUsers({ id: parent._id })
            }
        },
    })
})
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
	GraphQLNonNull,
	GraphQLBoolean
} = graphql

// Game Data controllers
const gameDataTypes = require('../objectTypes/gameData')
const answerController = require('../../controllers/gameData/ChameleonGame/AnswerController')
const chameleonCategoryController = require('../../controllers/gameData/ChameleonGame/ChameleonCategoryController')
const questionController = require('../../controllers/gameData/DeceiverGame/QuestionController')
const deceiverCategoryController = require('../../controllers/gameData/DeceiverGame/DeceiverCategoryController')
const roleController =  require('../../controllers/gameData/MaffiaGame/RoleController')


const realtimeDataTypes = require('../objectTypes/realtimeData')
// MaffiaGame realtime controllers
const civilianController = require('../../controllers/realtimeData/MaffiaGame/CivilianController')
const doctorController = require('../../controllers/realtimeData/MaffiaGame/DoctorController')
const mafiaController = require('../../controllers/realtimeData/MaffiaGame/MafiaController')
const narratorController = require('../../controllers/realtimeData/MaffiaGame/NarratorController')
const policeController = require('../../controllers/realtimeData/MaffiaGame/PoliceController')
const gameController = require('../../controllers/realtimeData/MaffiaGame/GameController')


const userDataType = require('../objectTypes/userData')
const userController = require('../../controllers/userData/UserController')
// Define Mutations
exports.Mutations = new GraphQLObjectType({
	name: 'Mutations',
	fields: {
		//User

	addUser: {
		type: userDataType.userType,
			args: {
				username: { type: new GraphQLNonNull(GraphQLString) },
				email: { type: new GraphQLNonNull(GraphQLString) },
				password: { type: new GraphQLNonNull(GraphQLString) },
				avatarURL: { type: GraphQLString },
				isGuest: { type: GraphQLBoolean },
				game_id: { type: GraphQLID}
			},
			async resolve(parent, args) {
		 		const data = await userController.addUser(args)
		 		return data
		 	}
		 },
		//Game Data Mutations
		// ---------------------------------
		//ChameleonGame 
		// ---------------------------------
		// Answer
		// addAnswer: {
		// 	type: gameDataTypes.answerType,
		// 	args: {
		// 		answer: { type:  new GraphQLNonNull(GraphQLString) },
		// 		category_id: { type:  new GraphQLNonNull(GraphQLID) },
		// 	},
		// 	async resolve(parent, args) {
		//  		const data = await answerController.addAnswer(args)
		//  		return data
		//  	}
		// },
		// editAnswer: {
		// 	type: gameDataTypes.answerType,
		// 	args: {
		// 		answer: { type:  new GraphQLNonNull(GraphQLString) },
		// 		category_id: { type: new GraphQLNonNull(GraphQLID) },
		// 	},
		// 	async resolve(parent, args) {
		//  		const data = await answerController.updateAnswer(args)
		//  		return data
		//  	}
		// },
		// deleteAnswer: {
		// 	type: gameDataTypes.answerType,
		// 	args: {
		// 		id: { type: new GraphQLNonNull(GraphQLID) }
		// 	},
		// 	async resolve(parent, args) {
		//  		const data = await answerController.deleteAnswer(args)
		//  		return data
		//  	}
		// },
		// // -----------------------
		// // Chameleon Category
		// // -----------------------
		// addChameleonCategory: {
		// 	type: gameDataTypes.chameleonCategoryType,
		// 	args: {
		// 		title: { type:  new GraphQLNonNull(GraphQLString) },
		// 	},
		// 	async resolve(parent, args) {
		//  		const data = await chameleonCategoryController.addChameleonCategory(args)
		//  		return data
		//  	}
		// },
		// editChameleonCategory: {
		// 	type: gameDataTypes.chameleonCategoryType,
		// 	args: {
		// 		title: { type:  new GraphQLNonNull(GraphQLString) },
		// 	},
		// 	async resolve(parent, args) {
		//  		const data = await chameleonCategoryController.updateChameleonCategory(args)
		//  		return data
		//  	}
		// },
		// deleteChameleonCategory: {
		// 	type: gameDataTypes.chameleonCategoryType,
		// 	args: {
		// 		id: { type: new GraphQLNonNull(GraphQLID) }
		// 	},
		// 	async resolve(parent, args) {
		//  		const data = await chameleonCategoryController.deleteChameleonCategory(args)
		//  		return data
		//  	}
		// },
		// // -----------------------
		// // DeceiverGame
		// // -----------------------
		// // Question
		// addQuestion: {
		// 	type: gameDataTypes.questionType,
		// 	args: {
		// 		question: { type:  new GraphQLNonNull(GraphQLString) },
		// 		answer: { type:  new GraphQLNonNull(GraphQLString) },
		// 		category_id: { type:  new GraphQLNonNull(GraphQLID) },
		// 	},
		// 	async resolve(parent, args) {
		//  		const data = await questionController.addQuestion(args)
		//  		return data
		//  	}
		// },
		// editQuestion: {
		// 	type: gameDataTypes.questionType,
		// 	args: {
		// 		question: { type:  new GraphQLNonNull(GraphQLString) },
		// 		answer: { type:  new GraphQLNonNull(GraphQLString) },
		// 		category_id: { type:  new GraphQLNonNull(GraphQLID) },
		// 	},
		// 	async resolve(parent, args) {
		//  		const data = await questionController.updateQuestion(args)
		//  		return data
		//  	}
		// },
		// deleteQuestion: {
		// 	type: gameDataTypes.questionType,
		// 	args: {
		// 		id: { type: new GraphQLNonNull(GraphQLID) }
		// 	},
		// 	async resolve(parent, args) {
		//  		const data = await questionController.deleteQuestion(args)
		//  		return data
		//  	}
		// },
		// // -----------------------
		// // DeceiverCategory
		// // -----------------------
		// addDeceiverCategory: {
		// 	type: gameDataTypes.deceiverCategoryType,
		// 	args: {
		// 		title: { type:  new GraphQLNonNull(GraphQLString) },
		// 	},
		// 	async resolve(parent, args) {
		//  		const data = await deceiverCategoryController.addDeceiverCategory(args)
		//  		return data
		//  	}
		// },
		// editDeceiverCategory: {
		// 	type: gameDataTypes.deceiverCategoryType,
		// 	args: {
		// 		title: { type:  new GraphQLNonNull(GraphQLString) },
		// 	},
		// 	async resolve(parent, args) {
		//  		const data = await deceiverCategoryController.updateDeceiverCategory(args)
		//  		return data
		//  	}
		// },
		// deleteDeceiverCategory: {
		// 	type: gameDataTypes.deceiverCategoryType,
		// 	args: {
		// 		id: { type: new GraphQLNonNull(GraphQLID) }
		// 	},
		// 	async resolve(parent, args) {
		//  		const data = await deceiverCategoryController.deleteDeceiverCategory(args)
		//  		return data
		//  	}
		// },
		// -----------------------
		// MaffiaGame
		// -----------------------
		// Role
		addRole: {
			type: gameDataTypes.roleType,
			args: {
				title: { type:  new GraphQLNonNull(GraphQLString) },
				canKill: { type: new GraphQLNonNull(GraphQLBoolean) },
				canHeal: { type: new GraphQLNonNull(GraphQLBoolean) },
				canDetect: { type: new GraphQLNonNull(GraphQLBoolean) }
			},
			async resolve(parent, args) {
		 		const data = await roleController.addRole(args)
		 		return data
		 	}
		},
		editRole: {
			type: gameDataTypes.roleType,
			args: {
				title: { type:  new GraphQLNonNull(GraphQLString) },
				canKill: { type: new GraphQLNonNull(GraphQLBoolean) },
				canHeal: { type: new GraphQLNonNull(GraphQLBoolean) },
				canDetect: { type: new GraphQLNonNull(GraphQLBoolean) }
			},
			async resolve(parent, args) {
		 		const data = await roleController.updateRole(args)
		 		return data
		 	}
		},
		deleteRole: {
			type: gameDataTypes.roleType,
			args: {
				id: { type: new GraphQLNonNull(GraphQLID) }
			},
			async resolve(parent, args) {
		 		const data = await roleController.deleteRole(args)
		 		return data
		 	}
		},

		//Realtime Data Mutations
		// ---------------------------------
		// MaffiaGame 
		// ---------------------------------
		// Civilian

		addCivilian: {
			type: realtimeDataTypes.civilianType,
			args: {
				is_alive: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_killed: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_awake: { type: new GraphQLNonNull(GraphQLBoolean) },
				role_id: { type: new GraphQLNonNull(GraphQLID) },
        		user_id: { type: new GraphQLNonNull(GraphQLID) },
				maffia_game_id: { type: new GraphQLNonNull(GraphQLID) }
			},
			async resolve(parent, args) {
		 		const data = await civilianController.addCivilian(args)
		 		return data
		 	}
		},
		editCivilian: {
			type: realtimeDataTypes.civilianType,
			args: {
				is_alive: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_killed: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_awake: { type: new GraphQLNonNull(GraphQLBoolean) },
				role_id: { type: new GraphQLNonNull(GraphQLID) },
        		user_id: { type: new GraphQLNonNull(GraphQLID) },
				maffia_game_id: { type: new GraphQLNonNull(GraphQLID) }
			},
			async resolve(parent, args) {
		 		const data = await civilianController.updateCivilian(args)
		 		return data
		 	}
		},
		deleteCivilian: {
			type: realtimeDataTypes.civilianType,
			args: {
				id: { type: new GraphQLNonNull(GraphQLID) }
			},
			async resolve(parent, args) {
		 		const data = await civilianController.deleteCivilian(args)
		 		return data
		 	}
		},

		// ---------------------------------
		// Doctor

		addDoctor: {
			type: realtimeDataTypes.doctorType,
			args: {
				is_alive: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_killed: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_awake: { type: new GraphQLNonNull(GraphQLBoolean) },
				role_id: { type: new GraphQLNonNull(GraphQLID) },
        		user_id: { type: new GraphQLNonNull(GraphQLID) },
				maffia_game_id: { type: new GraphQLNonNull(GraphQLID) } 
			},
			async resolve(parent, args) {
		 		const data = await doctorController.addDoctor(args)
		 		return data
		 	}
		},
		editDoctor: {
			type: realtimeDataTypes.doctorType,
			args: {
				is_alive: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_killed: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_awake: { type: new GraphQLNonNull(GraphQLBoolean) },
				role_id: { type: new GraphQLNonNull(GraphQLID) },
        		user_id: { type: new GraphQLNonNull(GraphQLID) },
				maffia_game_id: { type: new GraphQLNonNull(GraphQLID) }
			},
			async resolve(parent, args) {
		 		const data = await doctorController.updateDoctor(args)
		 		return data
		 	}
		},
		deleteDoctor: {
			type: realtimeDataTypes.doctorType,
			args: {
				id: { type: new GraphQLNonNull(GraphQLID) }
			},
			async resolve(parent, args) {
		 		const data = await doctorController.deleteDoctor(args)
		 		return data
		 	}
		},

		// ---------------------------------
		// Police

		addPolice: {
			type: realtimeDataTypes.policeType,
			args: {
				is_alive: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_killed: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_awake: { type: new GraphQLNonNull(GraphQLBoolean) },
				role_id: { type: new GraphQLNonNull(GraphQLID) },
        		user_id: { type: new GraphQLNonNull(GraphQLID) },
				maffia_game_id: { type: new GraphQLNonNull(GraphQLID) } 
			},
			async resolve(parent, args) {
		 		const data = await policeController.addPolice(args)
		 		return data
		 	}
		},
		editPolice: {
			type: realtimeDataTypes.policeType,
			args: {
				is_alive: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_killed: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_awake: { type: new GraphQLNonNull(GraphQLBoolean) },
				role_id: { type: new GraphQLNonNull(GraphQLID) },
        		user_id: { type: new GraphQLNonNull(GraphQLID) },
				maffia_game_id: { type: new GraphQLNonNull(GraphQLID) }
			},
			async resolve(parent, args) {
		 		const data = await policeController.updatePolice(args)
		 		return data
		 	}
		},
		deletePolice: {
			type: realtimeDataTypes.policeType,
			args: {
				id: { type: new GraphQLNonNull(GraphQLID) }
			},
			async resolve(parent, args) {
		 		const data = await policeController.deletePolice(args)
		 		return data
		 	}
		},

		// ---------------------------------
		// Mafia

		addMafia: {
			type: realtimeDataTypes.mafiaType,
			args: {
				is_alive: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_killed: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_awake: { type: new GraphQLNonNull(GraphQLBoolean) },
				role_id: { type: new GraphQLNonNull(GraphQLID) },
        		user_id: { type: new GraphQLNonNull(GraphQLID) },
				maffia_game_id: { type: new GraphQLNonNull(GraphQLID) } 
			},
			async resolve(parent, args) {
		 		const data = await mafiaController.addMafia(args)
		 		return data
		 	}
		},
		editMafia: {
			type: realtimeDataTypes.mafiaType,
			args: {
				is_alive: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_killed: { type: new GraphQLNonNull(GraphQLBoolean) },
				is_awake: { type: new GraphQLNonNull(GraphQLBoolean) },
				role_id: { type: new GraphQLNonNull(GraphQLID) },
        		user_id: { type: new GraphQLNonNull(GraphQLID) },
				maffia_game_id: { type: new GraphQLNonNull(GraphQLID) }
			},
			async resolve(parent, args) {
		 		const data = await mafiaController.updateMafia(args)
		 		return data
		 	}
		},
		deleteMafia: {
			type: realtimeDataTypes.mafiaType,
			args: {
				id: { type: new GraphQLNonNull(GraphQLID) }
			},
			async resolve(parent, args) {
		 		const data = await mafiaController.deleteMafia(args)
		 		return data
		 	}
		},

		// ---------------------------------
		// Narrator

		addNarrator: {
			type: realtimeDataTypes.narratorType,
			args: {
				role_id: { type: new GraphQLNonNull(GraphQLID) },
        		user_id: { type: new GraphQLNonNull(GraphQLID) },
				maffia_game_id: { type: new GraphQLNonNull(GraphQLID) } 
			},
			async resolve(parent, args) {
		 		const data = await narratorController.addNarrator(args)
		 		return data
		 	}
		},
		editNarrator: {
			type: realtimeDataTypes.narratorType,
			args: {
				role_id: { type: new GraphQLNonNull(GraphQLID) },
        		user_id: { type: new GraphQLNonNull(GraphQLID) },
				maffia_game_id: { type: new GraphQLNonNull(GraphQLID) }
			},
			async resolve(parent, args) {
		 		const data = await narratorController.updateNarrator(args)
		 		return data
		 	}
		},
		deleteNarrator: {
			type: realtimeDataTypes.narratorType,
			args: {
				id: { type: new GraphQLNonNull(GraphQLID) }
			},
			async resolve(parent, args) {
		 		const data = await narratorController.deleteNarrator(args)
		 		return data
		 	}
		},
		// ----------------
		// MaffiaGame Itself
		// ----------------
		addMaffiaGame: {
			type: realtimeDataTypes.maffiaGameType,
			args: {
				owner_id: { type: new GraphQLNonNull(GraphQLID) },
			},
			async resolve(parent, args) {
		 		const data = await gameController.addMaffiaGame(args)
		 		return data
		 	}
		},
		editMaffiaGame: {
			type: realtimeDataTypes.maffiaGameType,
			args: {
				owner_id: { type: GraphQLID },
				is_open: { type: GraphQLBoolean }
			},
			async resolve(parent, args) {
		 		const data = await gameController.updateMaffiaGame(args)
		 		return data
		 	}
		},
		deleteMaffiaGame: {
			type: realtimeDataTypes.maffiaGameType,
			args: {
				id: { type: new GraphQLNonNull(GraphQLID) }
			},
			async resolve(parent, args) {
		 		const data = await gameController.deleteMaffiaGame(args)
		 		return data
		 	}
		},

	}
})
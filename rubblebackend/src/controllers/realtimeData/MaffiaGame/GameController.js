// External Dependancies
const boom = require('@hapi/boom')
const ObjectId = require('mongodb').ObjectID;
// Get Data Models
const MaffiaGame = require('../../../models/realtimeData/MaffiaGame/MaffiaGame')
const Mafia = require('../../../models/realtimeData/MaffiaGame/Mafia')
const Civilian = require('../../../models/realtimeData/MaffiaGame/Civilian')
const Narrator = require('../../../models/realtimeData/MaffiaGame/Narrator')
const Police = require('../../../models/realtimeData/MaffiaGame/Police')
const Doctor = require('../../../models/realtimeData/MaffiaGame/Doctor')

// Get all 
exports.getMaffiaGames = async () => {
  try {
		const maffiaGames = await MaffiaGame.find()
		return maffiaGames
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get single by id
exports.getSingleMaffiaGame = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const maffiaGames = await MaffiaGame.findById(id)
		return maffiaGames
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Add new
exports.addMaffiaGame = async req => {
	try {
		const maffiaGame = new MaffiaGame(req)
		let generated_lobby_code = Math.floor(Math.random() * 9000 + 1000)
		while(MaffiaGame.find({lobby_code: generated_lobby_code}) == null){
			generated_lobby_code = Math.floor(Math.random() * 9000 + 1000)
		}
		maffiaGame.lobby_code = generated_lobby_code
		const newMaffiaGame = await maffiaGame.save()
		return newMaffiaGame
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Update existing
exports.updateMaffiaGame = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const updateData = req
		const update = await MaffiaGame.findByIdAndUpdate(id, updateData, { new: true })
		return update
	} catch (err) {
		throw boom.boomify(err)
	}
}

//Delete 
exports.deleteMaffiaGame = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const maffiaGame = await MaffiaGame.findByIdAndRemove(id)
		return maffiaGame
	} catch (err) {
		throw boom.boomify(err)
	}
}

exports.getGameCivilians = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id 
		const civilians = await Civilian.find({ maffia_game_id: id })
		return civilians
	} catch (err) {
		throw boom.boomify(err)
	}
}

exports.getGameMafias = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const mafias = await Mafia.find({ maffia_game_id: id })
		return mafias
	} catch (err) {
		throw boom.boomify(err)
	}
}

exports.getGameDoctor = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const doctor = await Doctor.find({ maffia_game_id: id })
		return doctor
	} catch (err) {
		throw boom.boomify(err)
	}
}

exports.getGameNarrator = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id 
		const narrator = await Narrator.find({ maffia_game_id: id })
		return narrator
	} catch (err) {
		throw boom.boomify(err)
	}
}

exports.getGamePolice = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id 
		const police = await Police.find({ maffia_game_id: id })
		return police
	} catch (err) {
		throw boom.boomify(err)
	}
}

exports.getGameUsers = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id 
		const users = await User.find({ game_id: id })
		return users
	} catch (err) {
		throw boom.boomify(err)
	}
}
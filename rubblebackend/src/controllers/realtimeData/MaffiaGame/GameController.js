// External Dependancies
const boom = require('@hapi/boom')

// Get Data Models
const MaffiaGame = require('../../../models/realtimeData/MaffiaGame/MaffiaGame')

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
		const id = req.id
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
		const newMaffiaGame = await maffiaGame.save()
		return newMaffiaGame
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Update existing
exports.updateMaffiaGame = async req => {
	try {
		const id = req.id
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
		const id = req.id
		const maffiaGame = await MaffiaGame.findByIdAndRemove(id)
		return maffiaGame
	} catch (err) {
		throw boom.boomify(err)
	}
}
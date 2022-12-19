// External Dependancies
const boom = require('@hapi/boom')

// Get Data Models
const Mafia = require('../../../models/realtimeData/MaffiaGame/Mafia')

// Get all 
exports.getMafias = async () => {
  try {
		const mafias = await Mafia.find()
		return mafias
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get single by id
exports.getSingleMafia = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const mafias = await Mafia.findById(id)
		return mafias
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Add new
exports.addMafia = async req => {
	try {
		const mafia = new Mafia(req)
		const newMafia = await mafia.save()
		return newMafia
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Update existing
exports.updateMafia = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const updateData = req
		const update = await Mafia.findByIdAndUpdate(id, updateData, { new: true })
		return update
	} catch (err) {
		throw boom.boomify(err)
	}
}

//Delete 
exports.deleteMafia = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const mafia = await Mafia.findByIdAndRemove(id)
		return mafia
	} catch (err) {
		throw boom.boomify(err)
	}
}
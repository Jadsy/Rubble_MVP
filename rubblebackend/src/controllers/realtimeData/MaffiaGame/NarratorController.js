// External Dependancies
const boom = require('@hapi/boom')

// Get Data Models
const Narrator = require('../../../models/realtimeData/MaffiaGame/Narrator')

// Get all 
exports.getNarrators = async () => {
  try {
		const narrators = await Narrator.find()
		return narrators
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get single by id
exports.getSingleNarrator = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const narrators = await Narrator.findById(id)
		return narrators
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Add new
exports.addNarrator = async req => {
	try {
		const narrator = new Narrator(req)
		const newNarrator = await narrator.save()
		return newNarrator
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Update existing
exports.updateNarrator = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const updateData = req
		const update = await Narrator.findByIdAndUpdate(id, updateData, { new: true })
		return update
	} catch (err) {
		throw boom.boomify(err)
	}
}

//Delete 
exports.deleteNarrator = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const narrator = await Narrator.findByIdAndRemove(id)
		return narrator
	} catch (err) {
		throw boom.boomify(err)
	}
}
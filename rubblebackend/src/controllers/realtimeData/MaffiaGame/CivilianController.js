// External Dependancies
const boom = require('@hapi/boom')

// Get Data Models
const Civilian = require('../../../models/realtimeData/MaffiaGame/Civilian')

// Get all 
exports.getCivilians = async () => {
  try {
		const civilians = await Civilian.find()
		return civilians
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get single by id
exports.getSingleCivilian = async req => {
	try {
		const id = req.id
		const civilians = await Civilian.findById(id)
		return civilians
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Add new
exports.addCivilian = async req => {
	try {
		const civilian = new Civilian(req)
		const newCivilian = await civilian.save()
		return newCivilian
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Update existing
exports.updateCivilian = async req => {
	try {
		const id = req.id
		const updateData = req
		const update = await Civilian.findByIdAndUpdate(id, updateData, { new: true })
		return update
	} catch (err) {
		throw boom.boomify(err)
	}
}

//Delete 
exports.deleteCivilian = async req => {
	try {
		const id = req.id
		const civilian = await Civilian.findByIdAndRemove(id)
		return civilian
	} catch (err) {
		throw boom.boomify(err)
	}
}
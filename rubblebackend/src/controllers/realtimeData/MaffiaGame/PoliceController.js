// External Dependancies
const boom = require('@hapi/boom')

// Get Data Models
const Police = require('../../../models/realtimeData/MaffiaGame/Police')

// Get all 
exports.getPolices = async () => {
  try {
		const polices = await Police.find()
		return polices
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get single by id
exports.getSinglePolice = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const polices = await Police.findById(id)
		return polices
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Add new
exports.addPolice = async req => {
	try {
		const police = new Police(req)
		const newPolice = await police.save()
		return newPolice
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Update existing
exports.updatePolice = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const updateData = req
		const update = await Police.findByIdAndUpdate(id, updateData, { new: true })
		return update
	} catch (err) {
		throw boom.boomify(err)
	}
}

//Delete 
exports.deletePolice = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const police = await Police.findByIdAndRemove(id)
		return police
	} catch (err) {
		throw boom.boomify(err)
	}
}
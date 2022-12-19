// External Dependancies
const boom = require('@hapi/boom')

// Get Data Models
const Answer = require('../../../models/gameData/ChameleonGame/Answer')
const ChameleonCategory = require('../../../models/gameData/ChameleonGame/ChameleonCategory')


// Get all 
exports.getChameleonCategory = async () => {
  try {
		const chameleonCategory = await ChameleonCategory.find()
		return chameleonCategory
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get single by id
exports.getSingleChameleonCategory = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const chameleonCategory = await ChameleonCategory.findById(id)
		return chameleonCategory
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get category answers (maybe get randomized 16)
exports.getCategoryAnswers = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id 
		const answers = await Answer.find({ category_id: id })
		return answers
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Add new
exports.addChameleonCategory = async req => {
	try {
		const chameleonCategory = new ChameleonCategory(req)
		const newChameleonCategory = await chameleonCategory.save()
		return newChameleonCategory
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Update existing
exports.updateChameleonCategory = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const updateData = req
		const update = await ChameleonCategory.findByIdAndUpdate(id, updateData, { new: true })
		return update
	} catch (err) {
		throw boom.boomify(err)
	}
}

//Delete 
exports.deleteChameleonCategory = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const chameleonCategory = await ChameleonCategory.findByIdAndRemove(id)
		return chameleonCategory
	} catch (err) {
		throw boom.boomify(err)
	}
}
// External Dependancies
const boom = require('@hapi/boom')

// Get Data Models
const Question = require('../../../models/gameData/DeceiverGame/Question')
const DeceiverCategory = require('../../../models/gameData/DeceiverGame/DeceiverCategory')


// Get all 
exports.getDeceiverCategory = async () => {
  try {
		const deceiverCategory = await DeceiverCategory.find()
		return deceiverCategory
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get single by id
exports.getSingleDeceiverCategory = async req => {
	try {
		const id = req.id
		const deceiverCategory = await DeceiverCategory.findById(id)
		return deceiverCategory
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get category questions
exports.getCategoryAnswers = async req => {
	try {
		const id = req.id 
		const questions = await Question.find({ category_id: id })
		return questions
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Add new
exports.addDeceiverCategory = async req => {
	try {
		const deceiverCategory = new DeceiverCategory(req)
		const newDeceiverCategory = await deceiverCategory.save()
		return newDeceiverCategory
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Update existing
exports.updateDeceiverCategory = async req => {
	try {
		const id = req.id
		const updateData = req
		const update = await DeceiverCategory.findByIdAndUpdate(id, updateData, { new: true })
		return update
	} catch (err) {
		throw boom.boomify(err)
	}
}

//Delete 
exports.deleteDeceiverCategory = async req => {
	try {
		const id = req.id
		const deceiverCategory = await DeceiverCategory.findByIdAndRemove(id)
		return deceiverCategory
	} catch (err) {
		throw boom.boomify(err)
	}
}
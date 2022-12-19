// External Dependancies
const boom = require('@hapi/boom')

// Get Data Models
const Answer = require('../../../models/gameData/ChameleonGame/Answer')

// Get all 
exports.getAnswers = async () => {
  try {
		const answers = await Answer.find()
		return answers
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get single by id
exports.getSingleAnswer = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const answers = await Answer.findById(id)
		return answers
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Add new
exports.addAnswer = async req => {
	try {
		const answer = new Answer(req)
		const newAnswer = await answer.save()
		return newAnswer
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Update existing
exports.updateAnswer = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const updateData = req
		const update = await Answer.findByIdAndUpdate(id, updateData, { new: true })
		return update
	} catch (err) {
		throw boom.boomify(err)
	}
}

//Delete 
exports.deleteAnswer = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const answer = await Answer.findByIdAndRemove(id)
		return answer
	} catch (err) {
		throw boom.boomify(err)
	}
}
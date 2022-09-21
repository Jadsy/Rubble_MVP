// External Dependancies
const boom = require('@hapi/boom')

// Get Data Models
const Question = require('../../../models/gameData/DeceiverGame/Question')

// Get all 
exports.getQuestions = async () => {
  try {
		const questions = await Question.find()
		return questions
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get single by id
exports.getSingleQuestion = async req => {
	try {
		const id = req.id
		const questions = await Question.findById(id)
		return questions
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Add new
exports.addQuestion = async req => {
	try {
		const answer = new Question(req)
		const newQuestion = await answer.save()
		return newQuestion
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Update existing
exports.updateQuestion = async req => {
	try {
		const id = req.id
		const updateData = req
		const update = await Question.findByIdAndUpdate(id, updateData, { new: true })
		return update
	} catch (err) {
		throw boom.boomify(err)
	}
}

//Delete 
exports.deleteQuestion = async req => {
	try {
		const id = req.id
		const answer = await Question.findByIdAndRemove(id)
		return answer
	} catch (err) {
		throw boom.boomify(err)
	}
}
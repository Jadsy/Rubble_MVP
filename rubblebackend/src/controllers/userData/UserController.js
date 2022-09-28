// External Dependancies
const boom = require('@hapi/boom')

// Get Data Models
const User = require('../../models/userData/User')

// Get all 
exports.getUsers = async () => {
  try {
		const users = await User.find()
		return users
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get single by id
exports.getSingleUser = async req => {
	try {
		const id = req.id
		const users = await User.findById(id)
		return users
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Add new
exports.addUser = async req => {
	try {
		const user = new User(req)
		const newUser = await user.save()
		return newUser
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Update existing
exports.updateUser = async req => {
	try {
		const id = req.id
		const updateData = req
		const update = await User.findByIdAndUpdate(id, updateData, { new: true })
		return update
	} catch (err) {
		throw boom.boomify(err)
	}
}

//Delete 
exports.deleteUser = async req => {
	try {
		const id = req.id
		const user = await User.findByIdAndRemove(id)
		return user
	} catch (err) {
		throw boom.boomify(err)
	}
}
// External Dependancies
const boom = require('@hapi/boom')

// Get Data Models
const Role = require('../../../models/gameData/MaffiaGame/Role')

// Get all 
exports.getRoles = async () => {
  try {
		const roles = await Role.find()
		return roles
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get single by id
exports.getSingleRole = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const roles = await Role.findById(id)
		return roles
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Add new
exports.addRole = async req => {
	try {
		const role = new Role(req)
		const newRole = await role.save()
		return newRole
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Update existing
exports.updateRole = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const updateData = req
		const update = await Role.findByIdAndUpdate(id, updateData, { new: true })
		return update
	} catch (err) {
		throw boom.boomify(err)
	}
}

//Delete 
exports.deleteRole = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const role = await Role.findByIdAndRemove(id)
		return role
	} catch (err) {
		throw boom.boomify(err)
	}
}
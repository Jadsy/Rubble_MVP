// External Dependancies
const boom = require('@hapi/boom')

// Get Data Models
const Doctor = require('../../../models/realtimeData/MaffiaGame/Doctor')

// Get all 
exports.getDoctors = async () => {
  try {
		const doctors = await Doctor.find()
		return doctors
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Get single by id
exports.getSingleDoctor = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const doctors = await Doctor.findById(id)
		return doctors
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Add new
exports.addDoctor = async req => {
	try {
		const doctor = new Doctor(req)
		const newDoctor = await doctor.save()
		return newDoctor
	} catch (err) {
		throw boom.boomify(err)
	}
}

// Update existing
exports.updateDoctor = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const updateData = req
		const update = await Doctor.findByIdAndUpdate(id, updateData, { new: true })
		return update
	} catch (err) {
		throw boom.boomify(err)
	}
}

//Delete 
exports.deleteDoctor = async req => {
	try {
		const id = req.params === undefined ? req.id : req.params.id
		const doctor = await Doctor.findByIdAndRemove(id)
		return doctor
	} catch (err) {
		throw boom.boomify(err)
	}
}
// External Dependancies
const mongoose = require("mongoose")

const roleSchema = new mongoose.Schema({
  title: String,
  canKill: Boolean,
  canHeal: Boolean,
  canDetect: Boolean
})

module.exports = mongoose.model("Role", roleSchema)
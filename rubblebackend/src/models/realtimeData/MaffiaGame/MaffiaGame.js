// External Dependancies
const mongoose = require("mongoose")
const maffiaGameSchema = new mongoose.Schema({
  lobby_code: Number
})

module.exports = mongoose.model("MaffiaGame", maffiaGameSchema)
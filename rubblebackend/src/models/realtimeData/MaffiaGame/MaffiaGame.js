// External Dependancies
const mongoose = require("mongoose")
const ObjectId = mongoose.Schema.Types.ObjectId

const maffiaGameSchema = new mongoose.Schema({
  lobby_code: Number,
  mafia: [{
    type: ObjectId,
    ref: "Mafia"
  }],
  civilian: [{
    type: ObjectId,
    ref: "Civilian"
  }],
  doctor: ObjectId,
  police: ObjectId

})

module.exports = mongoose.model("MaffiaGame", maffiaGameSchema)
// External Dependancies
const mongoose = require("mongoose")
const ObjectId = mongoose.Schema.Types.ObjectId
const maffiaGameSchema = new mongoose.Schema({
  lobby_code: {
    type: Number,
    unique: true
  },
  is_open: {
    type: Boolean,
    default: true
  },
  owner_id: ObjectId
})

module.exports = mongoose.model("MaffiaGame", maffiaGameSchema)
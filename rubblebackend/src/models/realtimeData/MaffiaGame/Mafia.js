// External Dependancies
const mongoose = require("mongoose")
const ObjectId = mongoose.Schema.Types.ObjectId

const mafiaSchema = new mongoose.Schema({
    //userData/User
  user_id: ObjectId,
  // gameData/MaffiaGame/Role
  role_id: ObjectId,
  is_alive: Boolean
})

module.exports = mongoose.model("Mafia", mafiaSchema)
// External Dependancies
const mongoose = require("mongoose")
const ObjectId = mongoose.Schema.Types.ObjectId

const mafiaSchema = new mongoose.Schema({
    //userData/User
  user_id: ObjectId,
  // gameData/MaffiaGame/Role
  role_id: ObjectId,
  is_alive: Boolean,
  is_killed: Boolean,
  is_awake: Boolean,
  maffia_game_id: ObjectId
})

module.exports = mongoose.model("Mafia", mafiaSchema)
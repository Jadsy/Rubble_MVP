// External Dependancies
const mongoose = require("mongoose")
const ObjectId = mongoose.Schema.Types.ObjectId

const narratorSchema = new mongoose.Schema({
    //userData/User
  user_id: ObjectId,
  // gameData/MaffiaGame/Role
  role_id: ObjectId
})

module.exports = mongoose.model("Narrator", narratorSchema)
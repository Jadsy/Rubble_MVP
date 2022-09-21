// External Dependancies
const mongoose = require("mongoose")
const ObjectId = mongoose.Schema.Types.ObjectId

const answerSchema = new mongoose.Schema({
  answer: String,
  category_id: ObjectId
})

module.exports = mongoose.model("Answer", answerSchema)
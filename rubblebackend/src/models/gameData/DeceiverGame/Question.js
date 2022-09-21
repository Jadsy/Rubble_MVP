// External Dependancies
const mongoose = require("mongoose")
const ObjectId = mongoose.Schema.Types.ObjectId

const questionSchema = new mongoose.Schema({
  question: String,
  answer: String,
  category_id: ObjectId
})

module.exports = mongoose.model("Question", questionSchema)
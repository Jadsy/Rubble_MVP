// External Dependancies
const boom = require("@hapi/boom");

// Get Data Models
const User = require("../../models/userData/User");

// Get all
exports.getUsers = async () => {
  try {
    const users = await User.find();
    return users;
  } catch (err) {
    throw boom.boomify(err);
  }
};

// Get single by id
exports.getSingleUser = async (req) => {
  try {
    const id = req.params === undefined ? req.id : req.params.id;
    const users = await User.findById(id);
    return users;
  } catch (err) {
    throw boom.boomify(err);
  }
};

exports.Login = async (req) => {
  try {
    const email = req.params === undefined ? req.email : req.params.email;
    const password =
      req.params === undefined ? req.password : req.params.password;
    const user = await User.findOne({
      email: email,
      password: password,
    });
    return user;
  } catch (error) {
    throw boom.boomify(err);
  }
};

// Add new
exports.addUser = async (req) => {
  try {
    const user = new User(req);
    const newUser = await user.save();
    return newUser;
  } catch (err) {
    throw boom.boomify(err);
  }
};

// Update existing
exports.updateUser = async (req) => {
  try {
    const id = req.params === undefined ? req.id : req.params.id;
    const updateData = req;
    const update = await User.findByIdAndUpdate(id, updateData, { new: true });
    return update;
  } catch (err) {
    throw boom.boomify(err);
  }
};

//Delete
exports.deleteUser = async (req) => {
  try {
    const id = req.params === undefined ? req.id : req.params.id;
    const user = await User.findByIdAndRemove(id);
    return user;
  } catch (err) {
    throw boom.boomify(err);
  }
};

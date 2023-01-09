// Import External Dependancies
const graphql = require("graphql");

// Destructure GraphQL functions
const { GraphQLObjectType, GraphQLID } = graphql;

const maffiaGameController = require("../../controllers/realtimeData/MaffiaGame/GameController");
const realtimeData = require("../objectTypes/realtimeData");
const mafiaController = require("../../controllers/realtimeData/MaffiaGame/MafiaController");

const user = require("../objectTypes/userData");
const userController = require("../../controllers/userData/UserController");
// Define Root Query
exports.RootQuery = new GraphQLObjectType({
  name: "RootQueryType",
  fields: {
    maffiaGame: {
      type: realtimeData.maffiaGameType,
      args: { id: { type: GraphQLID } },
      async resolve(parent, args) {
        return await maffiaGameController.getSingleMaffiaGame(args);
      },
    },
    Login: {
      type: user.userType,
      args: {
        email: { type: graphql.GraphQLString },
        password: { type: graphql.GraphQLString },
      },
	  async resolve(parent, args) {
		  const user = await userController.Login(args);
		  console.log(user);
		  return user;
      },
    },
  },
});

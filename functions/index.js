const functions = require("firebase-functions");
const admin = require("firebase-admin");
const auth = require("firebase-auth");

var serviceAccount = require("./houserabbit-9e338-firebase-adminsdk-39ubv-e919e30c4f.json");

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
});

exports.createCustomToken = functions.https.onRequest(async (request, response) => {
  const user = request.body;

  const uid = `kakao:${user.uid}`;
  const updateParams = {
    email: user.email,
  };

  try {
    await admin.auth().updateUser(uid, updateParams);
  } catch (e) {
    updateParams["uid"] = uid;
    await admin.auth().createUser(updateParams);
  }

  const token = await admin.auth().createCustomToken(uid);

  response.send(token);
});
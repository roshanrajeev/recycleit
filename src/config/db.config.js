const mongoose = require("mongoose")

const db = () => {
    mongoose.connect("mongodb://mongo:27017/recycleit_db", {
        useNewUrlParser: true
    })
    .then(() => console.log("Mongodb Connected"))
    .catch(err => console.error(err))
}

module.exports = { db }
const mongoose = require("mongoose")
const { Schema } = mongoose


const UserSchema = new Schema({
    firstname: {
        type: String,
        required: [true, "Firstname is required"],
        maxLength: [30, "Firstname must be less than 30 characters"]
    },
    lastname: {
        type: String,
        required: [true, "Lastname is required"],
        maxLength: [30, "Lastname must be less than 30 characters"]
    },
    email: {
        type: String,
        lowercase: true,
        trim: true,
        required: [true, "Email is required"],
        index: {
            unique: true
        }
    },
    password: {
        type: String,
        required: [true, "Password is required"]
    }
})

UserSchema.post('save', (error, doc, next) => {
    if(error.name === "MongoServerError" && error.code === 11000) {
        next(new Error("email: Email must be unique"))
    }else {
        next(error)
    }
})

module.exports.User = mongoose.model("user", UserSchema)
const jwt = require('jsonwebtoken')
const bcrypt = require('bcryptjs')
const { User } = require("../models/user.model")


const login = async (req, res) => {
    console.log(req.body)
    const { email, password } = req.body
    if(!(email && password)) {
        return res.status(400).send()
    }

    const user = await User.findOne({ email })
    if(!user || !bcrypt.compareSync(password, user.password)) {
        return res.status(400).send()
    }

    const token = jwt.sign(email, process.env.TOKEN_SECRET)
    res.send({token})
}


const register = async (req, res) => {
    const { email, password, firstname, lastname } = req.body
    
    console.log({ email, password })

    // Validating Data
    if(!(email && password && firstname && lastname)) {
        return res.status(400).json({
            error: "Required fields (email, password, firstname, lastname)"
        })
    }

    if(!(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/.test(password))) {
        return res.status(400).json({
            error: "Password must contain atleast 8 characters, 1 uppercase, 1 lowercase, 1 special-character and 1 number"
        })
    }

    // Hashing Password
    const salt = await bcrypt.genSalt(10)
    console.log({salt})
    const passwordHash = await bcrypt.hash(password, salt)
    console.log({passwordHash})

    // Creating User Object
    try {
        const user = new User({
            firstname: firstname,
            lastname: lastname,
            email: email,
            password: passwordHash
        })
        await user.save()
    } catch(err) {
        const str = err.message
        const error = str.split(":")[str.split(":").length-1]
        return res.status(400).json({error})
    }

    const token = jwt.sign(email, process.env.TOKEN_SECRET)
    res.status(201).send({token})
}

module.exports = {
    login,
    register
}
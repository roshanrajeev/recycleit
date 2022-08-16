const jwt = require('jsonwebtoken')

const login = (req, res) => {
    console.log("Login request red")
    res.send("logged in")
}

const register = (req, res) => {
    const { email, password, firstname, lastname } = req.body
    
    console.log({ email, password })

    if(!(email && password && firstname && lastname)) {
        return res.status(400).send()
    }

    const token = jwt.sign(email, process.env.TOKEN_SECRET)
    console.log(token)
    res.send("registered")
}

module.exports = {
    login,
    register
}
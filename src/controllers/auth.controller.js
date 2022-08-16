const jwt = require('jsonwebtoken')

const login = (req, res) => {
    res.send("loggedin")
}

const register = (req, res) => {
    const user = req.body
    
    const email = user.email
    const password = user.password

    const token = jwt.sign(email, process.env.TOKEN_SECRET)
    console.log(token)
    res.send("registered")
}

module.exports = {
    login,
    register
}
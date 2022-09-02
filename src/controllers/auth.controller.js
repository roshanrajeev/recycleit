const jwt = require('jsonwebtoken')

const login = (req, res) => {
    console.log(req.body)
    const { email, password } = req.body
    if(!(email && password)) {
        return res.status(400).send()
    }
    const token = jwt.sign(email, process.env.TOKEN_SECRET)
    res.send({token})
}

const register = (req, res) => {
    const { email, password, firstname, lastname } = req.body
    
    console.log({ email, password })

    if(!(email && password && firstname && lastname)) {
        return res.status(400).send()
    }

    const token = jwt.sign(email, process.env.TOKEN_SECRET)
    res.send({token})
}

module.exports = {
    login,
    register
}
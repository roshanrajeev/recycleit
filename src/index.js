const PORT = 5000
const BASE_URL = "/api/v1"

const express = require("express")
const bodyParser = require("body-parser")
const dotenv = require('dotenv');
const app = express()

const routes = require("./routes")

// get config vars
dotenv.config();

// Middlewares
app.use(bodyParser.json())

// Routes
app.use(`${BASE_URL}/`, routes.auth)

// Run Server
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`)
})
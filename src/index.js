const PORT = 5000
const BASE_URL = "/api/v1"

const express = require("express")
const bodyParser = require("body-parser")
const dotenv = require('dotenv');
const app = express()

const authRoutes = require("./routes/auth.router")

// get config vars
dotenv.config();

// Middlewares
app.use(bodyParser.json())

// Routes
app.use(`${BASE_URL}/`, authRoutes)

// Run Server
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`)
})
const PORT = 5000
const BASE_URL = "/api/v1"

const express = require("express")
const bodyParser = require("body-parser")
const dotenv = require('dotenv');
const app = express()

const authRoutes = require("./routes/auth.router")
const { db } = require("./config/db.config")

// get config vars
dotenv.config();

// Database
db()

// Middlewares
app.use(bodyParser.json())

// Routes
app.use(`${BASE_URL}/`, authRoutes)

// Run Server
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`)
})
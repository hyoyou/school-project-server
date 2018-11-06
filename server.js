// require('dotenv').config()
// const express = require('express')
// const path = require('path')
// const fs = require('fs')
// const https = require('https')
// const passport = require('passport')
// const session = require('express-session')
// const cors = require('cors')
// const socketio = require('socket.io')
// const authRouter = require('./lib/auth.router')
// const passportInit = require('./lib/passport.init')
// const { SESSION_SECRET, CLIENT_ORIGIN } = require('./config')
// const app = express()
//
//
// const certOptions = {
//   key: fs.readFileSync(path.resolve('certs/server.key')),
//   cert: fs.readFileSync(path.resolve('certs/server.crt'))
// }
//
// const server = https.createServer(certOptions, app)
//
// // Setup for passport and to accept JSON objects
// app.use(express.json())
// app.use(passport.initialize())
// passportInit()
//
// // Accept requests from the client
// app.use(cors({
//   origin: CLIENT_ORIGIN
// }))
//
// // saveUninitialized: true allows us to attach the socket id to the session
// // before we have athenticated the user
// app.use(session({
//   secret: process.env.SESSION_SECRET,
//   resave: true,
//   saveUninitialized: true
// }))
//
// // Connecting sockets to the server and adding them to the request
// // so that we can access them later in the controller
// const io = socketio(server)
// app.set('io', io)
//
// // Direct all requests to the auth router
// app.use('/', authRouter)
//
// server.listen(process.env.PORT || 8080, () => {
//   console.log('listening...')
// })

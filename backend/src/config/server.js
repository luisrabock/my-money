const port = 3003

const bodyParser = require('body-parser')
const express = require('express')
const queryParser = require('express-query-int')
const AllowCors = require('./cors')

const server = express()

server.use(bodyParser.urlencoded({extended: true}))
server.use(bodyParser.json())
server.use(AllowCors)
server.use(queryParser())    

server.listen(port, function() {
    console.log(`Servidor rodando na porta: ${port}`)
})

module.exports = server
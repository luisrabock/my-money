const mongoose = require('mongoose');
mongoose.Promise = global.Promise;
module.exports = mongoose.connect('mongodb://localhost/mymoney', {
 useMongoClient: true
});



mongoose.Error.messages.Number.min = 
    "O  '{VALUE}' informado é menor que o limite mínimo de '{MIN}'."

mongoose.Error.messages.Number.max = 
    "O '{VALUE} informado é  maior do que o limite máximo de '{MAX}'."

mongoose.Error.messages.String.enum =
    "O '{VALUE} informado não é valido para o atributo '{PATH}'."
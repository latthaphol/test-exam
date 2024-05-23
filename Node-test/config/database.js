const options = {
    client: 'mysql',
    connection: {
        host: '127.0.0.1', 
        user: 'root',
        password: '', 
        database: 'performdailytasks', 
        port: 3306 
    }
}

const knex = require('knex')(options);

module.exports = knex;

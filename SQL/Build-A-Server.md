- [ ] Build a simple API:

  - Create a `.gitignore` file executing `npx gitignore node`
  - Create a `package.json` file executing `npm init --y`
  - Add Eslint to the project executing `npx eslint --init`
  - Edit the `package.json` file to add `"start"` , `"server"` `"migrate"`, `"rollback"`, `"resetdb"` and `"seed"` scripts
    ```
        "start": "node index.js",
        "server": "nodemon index.js",
        "migrate": "knex migrate:latest",
        "rollback": "knex migrate:rollback",    
        "seed": "knex seed:run",
        "resetdb": "npm run rollback && npm run migrate && npm run seed"
    ```
  - Install `express`, `dotenv`, `cors`, `helmet`, `knex`, `sqlite3` in dependencies
    ```
        npm install knex@0.95.15 sqlite3 express dotenv cors helmet
    ```
  - Install  `nodemon` `knex-cleaner` in devDependencies
    ```
        npm install -D nodemon knex-cleaner
    ```
  - Add support for environment variables using an `.env` file and the dotenv library, providing fallbacks in the code
    - .env
    ```
    PORT=9000
    ```
    -   index.js
    ```
    require('dotenv').config()
    const server = require('./api/server')
    const PORT = process.env.PORT || 5000

    server.listen(PORT, () => {
        console.log(`listening on ${PORT}`)
    })
    ```
    -   server.js  
    ```
    const express = require('express');
    const helmet = require('helmet');
    const cors = require('cors')

    const server = express();
    server.use(express.json());
    server.use(helmet());
    server.use(cors()) // cors() returns a (req, res, nex) => { // stuff and then next() }

    server.use('/', (req, res)=>{
        res.send('Unit 4 Week 2 Module 4')
    })
    
    server.use((err, req, res, next) => { // eslint-disable-line
        console.log('disaster!')
        res.status(err.status || 500).json({
        message: `The Horror: ${err.message}`,
        })
    })

    module.exports = server;
    ```

- [ ] Install `knex@0.95.15` and `sqlite3` 
    ```
    npm install knex@0.95.15 sqlite3
    ```
    **Note**

    **Reminder, if you bootstrap a project from scratch, you must use `knex` and `@vscode/sqlite3` instead of `knex` and `sqlite3`**

    This is because the newest version of Knex (1.0.1) expects a different sqlite3 library (the one with the @vscode in the name).
    Inside the code there is no difference. Everything should be identical with the new driver.

    If you experience breakage with the new libraries (like `node-gyp` errors etc), use `knex@0.95.15` and `sqlite3` instead (the old libs)

    ```
    npm show knex versions

    npm uninstall knex @vscode/sqlite3 
    ```
- [ ] Generate knexfile.js by `npx knex init` 

  - knexfile.js
  ```
    module.exports = {

        development: {
            client: 'sqlite3',
            connection: {
            filename: './data/produce.db3',
            },
            useNullAsDefault: null,
            migrations: {
            directory: './data/migrations',
            },
            seeds: {
            directory: './data/seeds'
            }
            pool: {
                afterCreate: (conn, done) => {
                    // runs after a connection is made to the sqlite engine
                    conn.run('PRAGMA foreign_keys = ON', done); // turn on FK enforcement
                },
            },
        },

        staging: {

        },

        production: {

        },

    };

  ```
  
- [ ] build db-config.js file 

  - db-config.js
    ```
    const knex = require('knex') // 

    const configs = require('../knexfile')

    // on Heroku, process.env.NODE_ENV will be 'production'
    const env = process.env.NODE_ENV || 'development'

    // we need [ ] when object prop is a variable
    const config = configs[env]

    module.exports = knex(config)
    ```
- [ ] Generate a new migration file by  `npx knex migrate:make [migration-name]`
  ```
  npx knex migrate:make first-migration
  ```
- [ ] Update a newly created migration file:

    -  20220121035105_first-migration.js 

  ```
    exports.up = async function(knex) {
        await knex.schema
            .creatTables('recipes', table => {
                table.increments('recipe_id')
            })
            .creatTables('steps', table => {
                table.increments('step_id')
            })
            .creatTables('ingredients', table => {
                table.increments('ingredient_id')
            })
            .creatTables('step_ingredients', table => {
                table.increments('step_ingredient_id')
            })
    
    };

    exports.down = async function(knex) {
        await knex.schema
            .dropTableIfExists('step_ingredients')
            .dropTableIfExists('ingredients')
            .dropTableIfExists('steps')
            .dropTableIfExists('recipes')
    };
  ```
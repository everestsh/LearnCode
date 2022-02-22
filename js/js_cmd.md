


```

1> npm init --y // create package.json
2> yarn add express
3> npx gitignore node
4> yarn add nodemon
5> touch index.js
6> yarn  server  :  npm run server

npm i dotenv

heroku:
cd node-js-getting-started
heroku create
git remote heroku added
git push heroku main
heroku ps:scale web=1
heroku open
查看有关正在运行的应用程序的信息，heroku logs --tail


git init // init empty Git repository
npm i dotenv
npx gitignore node
npm init -y
npm i nodemon
npx eslint --init

npx create-react-app client
npm i -D --save-exact mini-css-extract-plugin@2.4.5
npm run build


npx knex init
npx knex migrate:make table-fruits

npm install knex@0.95.15 sqlite3



npm install knex@0.95.15 sqlite3
npx knex init
npm i knex-cleaner
npm i  express nodemon
npm install -g knex
npx  knex migrate:make create-tables
        npx  knex migrate:make  first-migration
        npx  knex migrate:make 01-make_car_tavle
        npx knex seed:make 01-cleanup
        npx knex seed:make 02-roles 
        npx knex seed:make 03-users 
knex seed:make 01-users 
 "scripts": {
    "server": "nodemon index.js",
    "migrate": "knex migrate:latest",
    "rollback": "knex migrate:rollback",
    "seed": "knex seed:run"
  },


Day2################################################
npx knex init  //Created ./knexfile.js
const sharedConfig = {
  client: 'sqlite3',
  useNullAsDefault: true,
  migrations: {
    directory: './data/migrations',
  },
  seeds: {
    directory: './data/seeds',
  },
  pool: {
    afterCreate: (conn, done) => {
      conn.run('PRAGMA foreign_keys = ON', done)
    },
  },
}

module.exports = {
  development: {
    ...sharedConfig,
    connection: { filename: './data/dealer.db3' },
  },
  testing: {
    ...sharedConfig,
    connection: { filename: './data/testing.db3' },
  },
}

npx knex migrate:make 01-cars-table.js
npx knex migrate:make 02-fruits
npx knex migrate:make 03-fruits-update
npx knex migrate:up 
npx knex migrate:down

npx knex seed:make 01-cars.js

npx knex seed:run

Day2################################################

npm i  react-router-dom@5
```

    * 1> `npm i bcryptjs express-session connect-session-knex`



    heroku create

    git push heroku main

    git init

    heroku git:remote -a node-api4-project-mingjun
    git add .
    git commit -am "heroku"
    git push heroku main
    




# SQL CMD


```
npm i -D knex-cleaner nodemon
npm i -D eslint

npm i express 
npm install knex@0.95.15 sqlite3
npm i dotenv

touch .env 

---copy  scripts to package.json---
--- 
touch api/project/project-middleware.js api/resource/resource-middleware.js api/task/task-middleware.js

mkdir -p api/users; mkdir -p api/auth
touch api/users/users-model.js api/users/users-router.js api/auth/auth-middleware.js api/auth/auth-router.js 

npx knex migrate:make 01-database-table
npx knex migrate:up 
npx knex migrate:down
npx knex migrate:latest
npx knex migrate:rollback
npx knex seed:make 01-cleanup  
npx knex seed:make 02-projects
npx knex seed:make 03-resources
npx knex seed:make 04-tasks
npx knex seed:make 05-project_resources
```
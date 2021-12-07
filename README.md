<h1>Course Api</h1>

A RESTful API for a course database 

Instructions
<br/>

```sh
git clone https://github.com/A-Qudsi/course-api.git
cd course-api
bundle install
```

Next lets set up the database

```sh
bundle exec rails db:create       #creates the database
bundle exec rails db:migrate      #updates the database with the model
bundle exec rails db:seed         #feeds the database with the the default data

#we could combine the commands:
bundle exec rails db:create db:migrate db:seed 
```

To run the app we just need to start our server

```sh
rails s
```

Your server should now be running at 

```sh 
http://localhost:3000
```





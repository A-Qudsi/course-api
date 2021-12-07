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


<a href="https://www.postman.com/">Postman</a> can be used to test your API endpoints


POST requests map to the create controller action

ex:

```sh
#create
http://localhost:3000/api/courses
```

GET requests map to index or show controller actions depending on the URI

ex:

```sh
#index
http://localhost:3000/api/courses

#show
http://localhost:3000/api/courses/36
```

PATCH requests map to the update controller action

ex:

```sh
#patch
http://localhost:3000/api/courses/36
```

DELETE requests map to the destroy controller action

ex:

```sh
#delete
http://localhost:3000/api/courses/36
```

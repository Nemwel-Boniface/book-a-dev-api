# Book-a-dev-api

This repository is a Ruby on Rails developed backend API only application named "book-a-dev-api". The purpose of the project is to automate the acquisition of technical talents by having a central location where some highly skilled developers can advertise themselves. The Application allows an authenticated user to log in to the system, get a list of all available developers who can be booked for a specified period of time and amount per hour. The developers' bio has the contact details, location, pricing per hour of the lawyer from which a user gets more insights. It also has dedicated pages to see a user's reservations and a reserve form. The project also has a Front end repository which can be viewed [here (book-a-dev-ui)](https://github.com/maxthestranger/book-a-dev-ui)


#### Project structure:
For this project, we are a team of 4 awesome members namely, [Isaka William](https://github.com/isaka-lumato), [Emmanuel Allan](https://github.com/maxthestranger), [Nicole Ciragane](https://github.com/ciraganenicole), and [Nemwel Boniface](https://github.com/Nemwel-Boniface).


To succesfully execute the project, we subdivided ourselves into two groups having Emmanuel and Nicole working on the Front End and Isaac and Nemwel working on the back end.


To do this succesfully we created a Kanban board and subdivided the tasks among ourselves and executed the tasks according to the plan that we had. The kanban can be viewed [here](https://github.com/users/maxthestranger/projects/4).


Enjoy!

## Project ERD
 (To be updated)


## Built With
- Ruby on rails v7.0.3
- Ruby v3 +
- PostgreSQL
- Rspec gem for project unit tests
- Rswag Gem for API documentation
- Postman for testing API endpoints
- Pair programming
- Definitely lots of love :heart: and dedication :muscle:

## Link to API Documentation
To view the available endpoints visit our ```https://book-a-dev-api.herokuapp.com/api-docs/index.html```

## Link to FrontEnd app 
The projects Front end can be found [here](https://github.com/maxthestranger/book-a-dev-ui)


## Hosting services

The project is deployed on Heroku and is hosted on GitHub. To test the project, you can optionally use the hosted version base URL ```https://book-a-dev-api.herokuapp.com``` or clone it locally into your local machine as explained below:

## Run project on your local machine follow these steps

1. Clone the project ```git clone https://github.com/maxthestranger/book-a-dev-api.git```

2. navigate to the project directory ```cd book-a-dev-api```

3. Install all dependancies of the project ```bundle install```

### Setup your database:

1. Create the database ```rails db:create```

2. Load all the project schema ```rails db:schema:load```

3. Migrate the project ```rails db:migrate```

4. Load project seed data ```rails db:seed```

5. Start your rails server and run it on port 8080 ```rails s -p 8080```

6. To check the API endpoints locally visit ```http://localhost:3000/api-docs```


## Testing the project online

The project base URL is ```https://book-a-dev-api.herokuapp.com/```. The API allows you to perform a number of operations namely, Signing up, signning in, Listing all developers, creating a developer, Listing all reservations for a user, Creating a reservation. Below I will elaborate on these with their endoints and where applicable provide sample data.

### 1. Sign up
 Endpoints for signing up is ```POST api/v1/users``` sample data for signing up:
 ```
 {
    "name":"mujomba",
    "username":"mja",    
    "email": "mja@gmail.com",
    "password": "222111"
}
```

### 2. Sign in
 Endpoint for signing in is ``` POST api/v1/login```. Sample login (with a valid user)
 ```
 {
    "email": "nemwelb@gmail.com",
    "password": "222111"
}
```

### 3. List all developers
 Endpoint for listing all developers is ```GET api/v1/developers```. Responds with JSON data
 
### 4. Creating a developer
 Endpoint for creating a developer is ```POST api/v1/developers```. Sample data include:
 ```
  { 
    "name": "Nemwel Boniface", 
    "icon": "https://avatars.githubusercontent.com/u/86318284?v=4", 
    "location": "Nairobi, Kenya", 
    "experience": "2", 
    "bio": "Some long text", 
    "hourly_rate": "25", 
    "tech_stack": "Rails, React, Redux, Ruby, PostgresQL", 
    "github": "https://github.com/Nemwel-Boniface", 
    "twitter": "https://twitter.com/nemwel_bonie", 
    "linkedin": "https://www.linkedin.com/in/nemwel-nyandoro/", 
    "available": "true", 
    "title": "Full-stack developer",  
    "phone": "0752245265", 
    "user_id": "1" 
  }
  ```
  
  ### 5. List a Reservation
   Endpoints for listing the reservations for a specific user is ```GET api/v1/users/:user_id/reservations/```.
   
  ### 6. Create a new reservation for a specific user
   Endpoints for creating a new reservation is ```POST api/v1/users/:user_id/reservations/```. Sample data include
   ```
   { 
     "start_date": "2020-04-23", 
     "end_date": "2025-05-13", 
     "location": "mavurunza", 
     "developer_id": "2", 
     "user_id": "1" 
   }
   ```



## API documentaion

The api endpoints can be found by putting the following in the browser url


### Run tests
```
rspec
```

## Authors

👤 **Nemwel Boniface**

- GitHub: [@Nemwel-Boniface ](https://github.com/Nemwel-Boniface)
- Twitter: [@nemwel_bonie](https://twitter.com/nemwel_bonie)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/nemwel-nyandoro/)

👤 **Isaka**

- GitHub: [@Isaka Lumato](https://github.com/isaka-lumato)
- Twitter: [@lumato_isaac](https://twitter.com/lumato_isaac)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/isaka-william-90773020b/)


👤 **Emmanuel Allan**
- GitHub: [@Emmanuel Allan](https://github.com/maxthestranger)
- Twitter: [@maxthestranger](https://twitter.com/maxthestranger)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/maxthestranger/)


👤 **Ciragane Nicole**
- GitHub: [@Ciragane Nicole](https://github.com/ciraganenicole)
- Twitter: [@ciraganeN](https://twitter.com/CiraganeN)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/ciraganenicole/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

# Acknowledgements

Original design idea by Murat Korkmaz on Behance.[Murat Korkmaz on Behance](https://www.behance.net/muratk)

## Show your support

Give a ⭐️ if you like this project!


## 📝 License

This project is [MIT](./MIT.md) licensed.




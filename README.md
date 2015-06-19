# Rails API

##Users Sign Up
* Path: `POST '/users/signup'`
* Params:
  * email: a string
  * password: a string
  * user name: a string
  * full name: a string

* Response:
  * Status Code: 201 if successful, 422 if unsuccessful
  * Example success:
  ``` 
    { "user":{
      "id":5,
      "username":"whitney_hoggs",
      "full_name":"Whitney Hoggs",
      "email":"whitney1@gmail.com",
      "access_token":"03c0b80efbe2b23a2c0764599ad60015"}
    }
   ```
  * Example Failure:
  ```{"errors":["Email has already been taken"]}```

##Users Login
* Path: `POST '/users/login'`
* Params:
  * email: a string
  * password: a string
  * user name: a string

* Response:
  * Status Code: 201 if successful
  * Example success:
  ``` 
  { "user": {
    "id": 5,
    "username": "whitney_hoggs",
    "full_name": "Whitney Hoggs",
    "email": "whitney1@gmail.com",
    "access_token": "03c0b80efbe2b23a2c0764599ad60015"
  }
}
  ```

##Show Individual User info
* Path: `GET '/user/:id'`
* Params:
  *User id you want to retrieve: an integer

* Response:
  *Example success: 
  ``` 
  {
    "user": {
    "id": 6,
    "username": "whitney_hoggs2",
    "full_name": "Whitney Hoggs",
    "email": "whitney2@gmail.com",
    "access_token": "d28faf6ea06d1636fe6cebf0196c2b1d"
  }
}
  ```

##Show All Users
* Path: `GET '/users'`
* Params:
  *none

* Response
  *Example Response:
  ``` 
  {
  "users": [
    {
      "id": 2,
      "username": "arfranco",
      "full_name": "Anthony Franco",
      "email": "brit@gmail.com"
    },
    {
      "id": 3,
      "username": "tterris",
      "full_name": "Trevor Terris",
      "email": "trevor@gmail.com"
    }
  ]
}
  ```

##Delete particular User
* Path `DELETE 'user/:id'`
* Params: 
  *Particular User ID: A string

*Response
  *Example Response:


##To post guesses for a particular post(i.e image) for particular user
* Path  POST 'post/:id/guesses'
* Params:
  * guess

Ex/ If a guess of "apple" is made (for user_id 2 post_id 3) and assuming "apple" is NOT the answer, then the json will appear as:

{"guess":{"guess":"apple","points":0,"post_id":3,"user_id":2,"created_at":"2015-06-19T14:15:46.795Z","updated_at":"2015-06-19T14:15:46.795Z"}}

Ex/ If a guess of "apple" is made (for user_id 2 post_id 3) and assuming "apple" IS the right answer, then the json will appear as (note that points will be changed to 1 if guessed correctly):

{"guess":{"guess":"apple","points":1,"post_id":3,"user_id":2,"created_at":"2015-06-19T14:15:46.795Z","updated_at":"2015-06-19T14:15:46.795Z"}}

##To get individual user's total score
* Path GET 'user/:id/score'

Ex/ For a specific user, who has a total of 2 points, the json will appear as:

{"user":{"score":2,"email":"test@gmail.com"}}







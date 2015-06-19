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
  ```{
      "user":{"id":5,
      "username":"whitney_hoggs",
      "full_name":"Whitney Hoggs",
      "email":"whitney1@gmail.com",
      "access_token":"03c0b80efbe2b23a2c0764599ad60015"}}
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
  ```{
    "user": {
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







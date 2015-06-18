# Rails API

##Sign Up
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
  "user": {
    "id": 2,
    "username": "arfranco",
    "full_name": "Anthony Franco",
    "email": "brit@gmail.com"
    }
  }
    ```

##Login
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
  "id": 2,
  "username": "arfranco",
  "full_name": "Anthony Franco",
  "email": "brit@gmail.com"
  }
}
  ```

##Show Individual User info
* Path: `GET '/user/:id'`
* Params:
  *User id you want to retrieve: an integer

* Response:
  *Example success: 
  ``` {
  "user": {
    "id": 2,
    "username": "arfranco",
    "full_name": "Anthony Franco",
    "email": "brit@gmail.com"
  }
}
  ```

##All Users
* Path: `GET '/users'`
* Params:
  *none

* Response
  *Example Response:
  ``` {
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







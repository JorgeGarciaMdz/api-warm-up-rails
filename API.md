# API Document

## Registration and Sessions

* **url** http://localhost:3000/users/

### Registration

#### **POST**

**body**

```json
{
	"user":{
		"email": "jorge@jorge.com",
		"password": "123456",
		"password_confirmation": "123456"
	}
}
```

**response status code 200** of creation

**body**
```json
{
  "message": "Signed up sucessfully."
}
```


**response status code 200** of don't creation

**body**
```json
{
  "message": "Something went wrong."
}
```

### Session

#### **POST**
**path** `/sign_in`

**body**

```json
{
	"user":{
		"email": "jorge@jorge.com",
		"password": "123456"
	}
}
```

**response status code 200** of session succefully

`parameter` in **header** : **Authorization**

**body**
```json
{
  "message": "You aren´t logged in.",
  "user": {
    "id": 1,
    "email": "jorge@jorge.com",
    "created_at": "2021-09-15T15:15:17.062Z",
    "updated_at": "2021-09-15T15:15:17.062Z"
  }
}
```

**response status code 200** of don't session

**body**
```json
{
  "message": "You aren´t logged in.",
  "user": null
}
```

______________________
**All request with** `Authorization` **params in header** 
______________________

## Posts

* **url** http://localhost:3000/post

#### **POST**

**body**

```json
{
	"title": "titulo 2",
	"content": "contenido titulo 2",
	"image": "url image contenido 2",
	"category": "drama",
	"user_id": 1
}
```

**response status code 200**

**body**
```json
{
  "id": 4,
  "title": "titulo 2"
}
```

#### **PUT**

**body**

```json
{
	"title": "titulo 4",
	"content": "contenido titulo 2",
	"image": "url image contenido 2",
	"category": "drama",
	"user_id": 1
}
```

**response status code 200**

**body**
```json
{
  "id": 4,
  "title": "titulo 4"
}
```

#### **DELETE**

**params**: id

**response status code 204**

#### **GET**   `FIND ALL`

**params**: `without params`

**response status code 200**

**body**
```json
{
  "posts": [
    {
      "id": 1,
      "title": "Post 1",
      "image": "url image post 1",
      "category": "informacion",
      "created_at": "2021-11-19T19:18:00.327Z"
    }
  ]
}
```

#### **GET**   `FIND BY ID`

**params**: id

**response status code 200**

**body**
```json
{
  "post": {
    "id": 3,
    "title": "titulo 2",
    "content": "contenido titulo 2",
    "image": "url image contenido 2",
    "category": "drama",
    "created_at": "2021-11-19T19:56:57.863Z"
  }
}
```
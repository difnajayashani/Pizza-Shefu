var frisby = require('frisby');

// Test register user-valid data.
frisby.create('Register customer test 01-valid data')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/customers/register/', {
        "title": "Mr", "firstName": "frisby", "lastName": "test", "username": "frisby123",
        "password": "password", "email": "frisby@kdm.com", "addressL1": "123",
        "addressL2": "abc", "mobile": "123456789"
    }, {json: true})
    .expectStatus(201)
    .inspectJSON()
    .expectJSONTypes({
        status: String,
        code: Number,
        message: String,
        data: {},
        links: {}
    })
    .expectJSON({
        "status": "success",
        "code": 201,
        "message": "user added to the database",
        "data": [
            {
                "firstName": "frisby",
                "lastName": "test",
                "Email": "frisby@kdm.com",
                "AddressLine02": "abc",
                "mobile": "123456789",
                "AddressLine03": null,
                "AddressLine01": "123",
                "title": "Mr",
                "username": "frisby123"
            }
        ],
        "links": [
            {
                "rel": "self",
                "link": "http://localhost:2222/pizza-shefu/api/v1.0/customers/register/"
            },
            {
                "rel": "profile",
                "link": "http://localhost:2222/pizza-shefu/api/v1.0/customers/frisby123"
            }
        ]
    })
    .toss();

// Test register user-different http method.
frisby.create('Register customer test 02-different http method')
    .get('http://localhost:2222/pizza-shefu/api/v1.0/customers/register/', {
        "title": "Mr", "firstName": "frisby", "lastName": "test", "username": "frisby123",
        "password": "password", "email": "frisby@kdm.com", "addressL1": "123",
        "addressL2": "abc", "mobile": "123456789"
    }, {json: true})
    .expectStatus(405)
    .inspectJSON()
    .expectJSONTypes({
        code: Number,
        description: String,
        errorMessage: String,
        status: String
    })
    .expectJSON({
        "code": 405,
        "description": "wrong http method used. use the proper http method as described in the documentation.",
        errorMessage: "HTTP_METHOD_NOT_ALLOWED",
        "status": "error"
    })
    .toss();

// Test user login-correct data.
frisby.create('Customer login test 01-correct data')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/customers/login/', {
        "username": "frisby123",
        "password": "password"
    }, {json: true})
    .expectStatus(200)
    .inspectJSON()
    .expectJSONTypes({
        status: String,
        code: Number,
        message: String,
        data: {},
        links: {}
    })
    .expectJSON({
        "status": "success",
        "code": 200,
        "message": "username, password validated.",
        "data": [
            {
                "password": "password",
                "username": "frisby123"
            }
        ],
        "links": [
            {
                "rel": "self",
                "link": "http://localhost:2222/pizza-shefu/api/v1.0/customers/login/"
            },
            {
                "rel": "profile",
                "link": "http://localhost:2222/pizza-shefu/api/v1.0/customers/frisby123"
            }
        ]
    })
    .toss();

// Test user login-wrong username.
frisby.create('Customer login test 02-wrong username')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/customers/login/', {
        "username": "frisby12",
        "password": "password"
    }, {json: true})
    .expectStatus(401)
    .inspectJSON()
    .expectJSONTypes({
        code: Number,
        description: String,
        errorMessage: String,
        status: String
    })
    .expectJSON({
        "code": 401,
        "description": "credentials provided are not authorized.",
        "errorMessage": "HTTP_UNAUTHORIZED",
        "status": "unauthorized"
    })
    .toss();

// Test user login-wrong password.
frisby.create('Customer login test 03-wrong password')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/customers/login/', {
        "username": "frisby123",
        "password": "passwor"
    }, {json: true})
    .expectStatus(401)
    .inspectJSON()
    .expectJSONTypes({
        code: Number,
        description: String,
        errorMessage: String,
        status: String
    })
    .expectJSON({
        "code": 401,
        "description": "credentials provided are not authorized.",
        "errorMessage": "HTTP_UNAUTHORIZED",
        "status": "unauthorized"
    })
    .toss();

// Test user login-with spaces.
frisby.create('Customer login test 04-with spaces')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/customers/login/', {
        "username": " frisby123",
        "password": "password"
    }, {json: true})
    .expectStatus(401)
    .inspectJSON()
    .expectJSONTypes({
        code: Number,
        description: String,
        errorMessage: String,
        status: String
    })
    .expectJSON({
        "code": 401,
        "description": "credentials provided are not authorized.",
        "errorMessage": "HTTP_UNAUTHORIZED",
        "status": "unauthorized"
    })
    .toss();

// Test user login-with spaces.
frisby.create('Customer login test 05-with spaces')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/customers/login/', {
        "username": "frisby123 ",
        "password": "password"
    }, {json: true})
    .expectStatus(401)
    .inspectJSON()
    .expectJSONTypes({
        code: Number,
        description: String,
        errorMessage: String,
        status: String
    })
    .expectJSON({
        "code": 401,
        "description": "credentials provided are not authorized.",
        "errorMessage": "HTTP_UNAUTHORIZED",
        "status": "unauthorized"
    })
    .toss();

// Test user login-mixed case username.
frisby.create('Customer login test 06-mixed case username')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/customers/login/', {
        "username": "friSby123",
        "password": "password"
    }, {json: true})
    .expectStatus(401)
    .inspectJSON()
    .expectJSONTypes({
        code: Number,
        description: String,
        errorMessage: String,
        status: String
    })
    .expectJSON({
        "code": 401,
        "description": "credentials provided are not authorized.",
        "errorMessage": "HTTP_UNAUTHORIZED",
        "status": "unauthorized"
    })
    .toss();

// Test user login-mixed case password.
frisby.create('Customer login test 07-mixed case password')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/customers/login/', {
        "username": "friSby123",
        "password": "pasSword"
    }, {json: true})
    .expectStatus(401)
    .inspectJSON()
    .expectJSONTypes({
        code: Number,
        description: String,
        errorMessage: String,
        status: String
    })
    .expectJSON({
        "code": 401,
        "description": "credentials provided are not authorized.",
        "errorMessage": "HTTP_UNAUTHORIZED",
        "status": "unauthorized"
    })
    .toss();

// Test user login-empty password.
frisby.create('Customer login test 08-empty password')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/customers/login/', {
        "username": "frisby123"
    }, {json: true})
    .expectStatus(401)
    .inspectJSON()
    .expectJSONTypes({
        code: Number,
        description: String,
        errorMessage: String,
        status: String
    })
    .expectJSON({
        "code": 401,
        "description": "credentials provided are not authorized.",
        "errorMessage": "HTTP_UNAUTHORIZED",
        "status": "unauthorized"
    })
    .toss();

// Test user login-empty username.
frisby.create('Customer login test 09-empty password')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/customers/login/', {
        "password": "password"
    }, {json: true})
    .expectStatus(401)
    .inspectJSON()
    .expectJSONTypes({
        code: Number,
        description: String,
        errorMessage: String,
        status: String
    })
    .expectJSON({
        "code": 401,
        "description": "credentials provided are not authorized.",
        "errorMessage": "HTTP_UNAUTHORIZED",
        "status": "unauthorized"
    })
    .toss();

// Test user login-With different http method.
frisby.create('Customer login test 10-wrong http method')
    .get('http://localhost:2222/pizza-shefu/api/v1.0/customers/login/', {
        "username": "frisby123",
        "password": "password"
    }, {json: true})
    .expectStatus(405)
    .inspectJSON()
    .expectJSONTypes({
        code: Number,
        description: String,
        errorMessage: String,
        status: String
    })
    .expectJSON({
        "code": 405,
        "description": "wrong http method used. use the proper http method as described in the documentation.",
        "errorMessage": "HTTP_METHOD_NOT_ALLOWED",
        "status": "error"
    })
    .toss();
var frisby = require('frisby');

// Test add guest user-valid data.
frisby.create('Register guest test 01-valid data')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/guests/add/', {
        "mobile": "0111111111"
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
        "message": "guest user added to the database",
        "data": [
            {
                "mobileNo": "0111111111"
            }
        ],
        "links": [
            {
                "rel": "self",
                "link": "http://localhost:2222/pizza-shefu/api/v1.0/guests/add/"
            }
        ]
    })
    .toss();

// Test add guest user-empty mobile no.
frisby.create('Register guest test 01-empty mobile no')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/guests/add/', {
        "mobile": ""
    }, {json: true})
    .expectStatus(400)
    .inspectJSON()
    .expectJSONTypes({
        status: String,
        code: Number,
        errorMessage: String,
        description: String
    })
    .expectJSON({
        "status": "error",
        "code": 400,
        "errorMessage": "HTTP_BAD_REQUEST",
        "description": "incorrect request. make sure the data sent are correct."
    })
    .toss();
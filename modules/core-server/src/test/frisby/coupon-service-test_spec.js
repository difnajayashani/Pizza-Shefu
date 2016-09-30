/**
 * Created by Kasun Dinesh on 9/23/16.
 */
var frisby = require('frisby');

// Test add coupon-valid data.
frisby.create('Coupon test 01-valid data')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/coupons/add/', {
        "couponCode": "frisbytest",
        "customerMobile": "12345678"
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
        "message": "coupon added",
        "data": [
            {
                "couponCode": "frisbytest",
                "customerMobile": "12345678"
            }
        ],
        "links": [
            {
                "rel": "self",
                "link": "http://localhost:2222/pizza-shefu/api/v1.0/coupons/add/"
            }
        ]
    })
    .toss();

// Test add coupon-empty customer mobile.
frisby.create('Coupon test 02-empty customer mobile')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/coupons/add/', {
        "couponCode": "frisbytest"
    }, {json: true})
    .expectStatus(500)
    .inspectJSON()
    .expectJSONTypes({
        code: Number,
        description: String,
        status: String
    })
    .expectJSON({
        "status": "error",
        "code": 500,
        "description": "internal server error occurred."
    })
    .toss();

// Test add coupon-empty coupon code.
frisby.create('Coupon test 02-empty coupon code')
    .post('http://localhost:2222/pizza-shefu/api/v1.0/coupons/add/', {
        "customerMobile": "12345678"
    }, {json: true})
    .expectStatus(500)
    .inspectJSON()
    .expectJSONTypes({
        code: Number,
        description: String,
        status: String
    })
    .expectJSON({
        "status": "error",
        "code": 500,
        "description": "internal server error occurred."
    })
    .toss();

'use strict';

var request = require('supertest');

var app = require('../server').app;

describe('GET /'.function () {
  it ('expects HTTP response 200', function (done) {
    request(app)
      .get('/')
      .expect(200, done;)
  });
});

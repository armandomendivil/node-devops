
'use strict';

var request = require('supertest');

var server = require('../server');

describe('GET /', function () {
  it ('expects HTTP response 200', function (done) {
    request(server)
      .get('/api')
      .expect(200, done);
  });
});

'use strict';
module.exports = {
  defaults: {
    development: {
      host: "http://localhost:80"
    , PORT: 5000
    }
  , production: {
      host: "https://production.com"
    , PORT: 5000
    }
  , staging: {
      host: "https://staging.production.com"
    , PORT: 5000
    }
  }
  , mail: 'mail@mail.mail'
  , mailTransport: {
      host: 'localhost'
    , port: 465
    , secure: true
    , auth: {
        user: 'username'
      , pass: 'password'
    }
  }
}

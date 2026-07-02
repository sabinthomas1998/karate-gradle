function fn() {
  var env = karate.env;
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    baseUrl: 'https://reqres.in/api'
  };

  if (env == 'staging') {
    config.baseUrl = 'https://reqres.in/api';
  } else if (env == 'prod') {
    config.baseUrl = 'https://reqres.in/api';
  }

  return config;
}

class ApiPath {
  static const String baseUrlDev = "http://"; // Dev
  static const String baseUrlProd = "http://"; // Prod
  static const String baseUrlLocal = "https://dummyjson.com/"; // local ou test
  static const String baseUrlImage = "http://"; // base image url

  // time for requests
  static const int receiveTimeout = 15000;
  static const int connectionTimeout = 15000;

  // lien Api
  static const String login = 'auth/login';
  static const String signup = 'signup';
}

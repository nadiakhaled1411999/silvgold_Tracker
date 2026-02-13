class ApiConstants {
  ApiConstants._();
  static final ApiConstants _instance = ApiConstants._();
  factory ApiConstants() => _instance;

  static final String baseUrl = "https://api.gold-api.com/price/";
  static final String goldEndPoint = "XAU";
  static final String silverEndPoint = "XAG";
}

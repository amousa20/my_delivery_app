// ignore_for_file: constant_identifier_names

class AppConstants{
  static const String APP_NAME = 'DBFood';
  static const int APP_VERSION = 1;
  // static const BASE_URL = 'http://10.0.2.2:8000';
  // static const BASE_URL = 'https://github.com/amousa20/delivery_app';
  // static const BASE_URL = 'http://dbf.dbestech.com';
  static const String POPULAR_PRODUCT_URI= '/api/v1/products/popular';
  // ignore: constant_identifier_names
  static const String RECOMMENDED_PRODUCT_URI= '/api/v1/products/recommended';
  static const String Drinks_URI= '/api/v1/products/drinks';
  // ignore: constant_identifier_names
  static const String UPLOAD_URL = '/uploads/';

  // user and auth end points
  static const String REGISTRATION_URI = '/api/v1/auth/register';
  static const String LOGIN_URI = '/api/v1/auth/login';
  static const String USER_INFO_URI = '/api/v1/customer/info';

  //new
  static const String USER_ADDRESS = 'user-address';
  static const String GEOCODE_URI = '/api/v1/config/geocode-api';


  // ignore: constant_identifier_names
  static const String TOKEN= '';
  static const String PHONE= '';
  static const String PASSWORD= '';
  static const String CART_LIST= 'Cart-list';
  static const String CART_HISTORY_LIST= 'cart-history-list';

}
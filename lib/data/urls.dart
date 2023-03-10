class Urls{
  static const String baseUrl ='https://craftybay.teamrabbil.com/api';
  static const String productSliderUrl = '$baseUrl/ListProductSlider';
  static const String categoryListUrl = '$baseUrl/CategoryList';
  static  String productByRemarksUrl(String remarks) => '$baseUrl/ListProductByRemark/$remarks';
  static  String productByCategoryUrl(String categoryId) => '$baseUrl/ListProductByCategory/$categoryId';
}
class ApiEndPointConstants {
  const ApiEndPointConstants._();
  static const String _baseUrl = "http://10.0.2.2:3003/api";

  static String apiLogin = "$_baseUrl/auth/login";
  static String apiRegistration = "$_baseUrl/auth/register";
  static String apiGetBasicInfoAccountByToken = "$_baseUrl/auth/profile";
}

class ApiEndPointConstants {
  const ApiEndPointConstants._();
  static const String _baseUrl = "http://10.0.0.2:3003/api";

  static String apiLogin = "$_baseUrl/auth/login";
  static String apiRegistration = "$_baseUrl/auth/register";
  static String apiGetBasicInfoAccountByToken = "$_baseUrl/auth/profile";
  static String apiGetValidPost = "$_baseUrl/post/valid-post";
  static String apiGetBlog = "$_baseUrl/blog";
  static String apiGetNotification = "$_baseUrl/notifications";
  static String apiGetCateBlog = "$_baseUrl/category-blog";
  static String apiGetMyAccountProfile = "$_baseUrl/user/my-account-profile";
  static String apiPatchMyProfile = "$_baseUrl/user/update-account/:id";
  static String apiGetBlogById = "$_baseUrl/blog/:id";
}

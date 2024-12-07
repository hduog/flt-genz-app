class ApiEndPointConstants {
  const ApiEndPointConstants._();
  static const String _baseUrl = "http://192.168.88.101:3003/api";

  static String apiLogin = "$_baseUrl/auth/login";
  static String apiRegistration = "$_baseUrl/auth/register";
  static String apiGetBasicInfoAccountByToken = "$_baseUrl/auth/profile";
  static String apiGetValidPost = "$_baseUrl/post/valid-post";
  static String apiGetCateBlog = "$_baseUrl/category-blog";
  static String apiGetBlog = "$_baseUrl/blog";
  static String apiGetNotification = "$_baseUrl/notifications";
  // API FOR REEL POST
  static String apiUpdateReactionReel = "$_baseUrl/likes/";
  static String apiCommentReelPost = "$_baseUrl/comment/";
  static String apiShowAllCommentReelPost(String idPost) {
    return "$_baseUrl/comment/posts/$idPost";
  }
}

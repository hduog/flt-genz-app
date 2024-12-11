class ApiEndPointConstants {
  const ApiEndPointConstants._();
  static const String _baseUrl = "http://10.0.0.2:3003/api";

  static String apiLogin = "$_baseUrl/auth/login";
  static String apiRegistration = "$_baseUrl/auth/register";
  static String apiGetBasicInfoAccountByToken = "$_baseUrl/auth/profile";
  static String apiGetValidPost = "$_baseUrl/post/valid-post";
  static String apiGetCateBlog = "$_baseUrl/category-blog";
  static String apiGetBlog = "$_baseUrl/blog";
  static String apiGetNotification = "$_baseUrl/notifications";
  // API FOR REEL POST
  static String apiUpdateReactionReel = "$_baseUrl/likes/";
  static String apiUpdateReactionPostShare = "$_baseUrl/likes/post-share";
  static String apiCommentReelPost = "$_baseUrl/comment/";
  static String apiCommentReelPostShare = "$_baseUrl/comment/post-share";
  static String apiShowAllCommentReelPost(String idPost) {
    return "$_baseUrl/comment/posts/$idPost";
  }
  static String apiShowAllCommentReelPostShare(String idPostShare) {
    return "$_baseUrl/comment/postshare/$idPostShare";
  }
}

class ApiEndPointConstants {
  const ApiEndPointConstants._();
  static const String _baseUrl = "http://192.168.88.101:3003/api";

  static String apiLogin = "$_baseUrl/auth/login";
  static String apiRegistration = "$_baseUrl/auth/register";
  static String apiGetBasicInfoAccountByToken = "$_baseUrl/auth/profile";
  static String apiGetValidPost(String? query) {
    return "$_baseUrl/post/valid-post?$query";
  }

  static String apiGetCateBlog = "$_baseUrl/category-blog";
  static String apiGetBlog(String? query) {
    return "$_baseUrl/blog?$query";
  }

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
 static String apiDetailPostById(String idPost) {
    return "$_baseUrl/post/$idPost";
  }
  static String apiGetHotBlog = "$_baseUrl/blog/list-hot-blog";

  // API FOR SEND SORROW
  static String apiGetSound(String? query) {
    return "$_baseUrl/sound-system?$query";
  }

  // API send to AI
  static String apiGetQuoteSendSorrow = "$_baseUrl/chat-bot/generate-quote";
  static String apiGetAllFeatures = "$_baseUrl/feature";

  static String apiCreatePost = "$_baseUrl/post";
  static String apiUploadPostImage = "$_baseUrl/file/upload-posts";
  static String apiGetMyAccountProfile = "$_baseUrl/user/my-account-profile";
  static String apiPatchMyProfile = "$_baseUrl/user/update-account";

  static String apiGetBlogById = "$_baseUrl/blog/:id";
  static String apiGetPostMySelf = "$_baseUrl/post/get-posts-account";
  static String apiGetPostShareMySelf = "$_baseUrl/postshare/myself";
  static String apiCreatePostShare = "$_baseUrl/postshare";
  static String apiGetFavoriteTag = "$_baseUrl/favorite-tag";
  static String apiUploadAvatarImage = "$_baseUrl/file/upload-avata";
  static String apiUploadBannerImage = "$_baseUrl/file/upload-banner";

  // API search
  static String apiSearchPost(String? keyword) {
    return "$_baseUrl/search/posts?keyword=$keyword";
  }

  static String apiSearchUser(String? keyword) {
    return "$_baseUrl/search/accounts?keyword=$keyword";
  }
}

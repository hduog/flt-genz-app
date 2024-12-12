class CommentReelPost {
  final String contentCmt;
  final String accountId;
  final String postId;

  CommentReelPost({
    required this.postId,
    required this.accountId,
    required this.contentCmt,
  });

  Map<String, dynamic> toJson() {
    return {
      'postId': postId,
      'accountId': accountId,
      'contentCmt': contentCmt,
    };
  }

  factory CommentReelPost.fromJson(Map<String, dynamic> json) {
    return CommentReelPost(
      postId: json['postId'] ?? '',
      accountId: json['accountId'] ?? '',
      contentCmt: json['contentCmt'] ?? '',
    );
  }
}

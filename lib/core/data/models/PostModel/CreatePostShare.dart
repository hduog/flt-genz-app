class CreatePostShare {
  final String content;
  final String accountId;
  final String postId;

  CreatePostShare({
    required this.postId,
    required this.accountId,
    required this.content,
  });

  Map<String, dynamic> toJson() {
    return {
      'postId': postId,
      'accountId': accountId,
      'content': content,
    };
  }

  factory CreatePostShare.fromJson(Map<String, dynamic> json) {
    return CreatePostShare(
      postId: json['postId'] ?? '',
      accountId: json['accountId'] ?? '',
      content: json['content'] ?? '',
    );
  }
}

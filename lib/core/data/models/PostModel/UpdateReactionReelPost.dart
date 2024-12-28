class UpdateReactionReelPost {
  String postId;
  UpdateReactionReelPost(this.postId);
  Map<String, dynamic> toJson() {
    return {
      'postId': postId,
    };
  }
}

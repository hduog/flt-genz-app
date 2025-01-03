import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/core/data/models/PostModel/DataGet/DataGet.dart';

class PostState {
  final List<DataGet> posts;
  final List<DataGet> postShares;

  PostState({required this.posts, required this.postShares});

  factory PostState.initial() {
    return PostState(posts: [], postShares: []);
  }
}

class PostNotifier extends StateNotifier<PostState> {
  PostNotifier() : super(PostState.initial());

  void setPosts(List<DataGet> posts) {
    state = PostState(posts: posts, postShares: state.postShares);
  }

  void setPostShare(List<DataGet> postShare) {
    state = PostState(posts: state.posts, postShares: postShare);
  }

  void addPost(DataGet newPost) {
    state = PostState(
        posts: [newPost, ...state.posts], postShares: state.postShares);
  }

  void addListPost(List<DataGet> newPosts) {
    state = PostState(
        posts: [...state.posts, ...newPosts], postShares: state.postShares);
  }

  void addPostShare(DataGet newPostShare) {
    state = PostState(
        posts: state.posts, postShares: [newPostShare, ...state.postShares]);
  }

  void updateCommentCount(String postId, int newCommentCount) {
    state = PostState(
      posts: state.posts.map((post) {
        if (post.id == postId) {
          return post.copyWith(totalComment: newCommentCount);
        }
        return post;
      }).toList(),
      postShares: state.postShares,
    );
  }

  void updateLikeStatus(String postId, bool isLiked, int newLikeCount) {
    state = PostState(
      posts: state.posts.map((post) {
        if (post.id == postId) {
          return post.copyWith(is_liked: isLiked, totalReaction: newLikeCount);
        }
        return post;
      }).toList(),
      postShares: state.postShares,
    );
  }
  List<DataGet> getPosts() {
    return state.posts;
  }

  List<DataGet> getPostShares() {
    return state.postShares;
  }
}

final postProvider = StateNotifierProvider<PostNotifier, PostState>((ref) {
  return PostNotifier();
});

class SearchUser {
  final String fullName;
  final String avata;
  final String id;
  final String nickName;
  final String aboutMe;
  final String address;

  SearchUser({
    required this.fullName,
    required this.avata,
    required this.id,
    required this.nickName,
    required this.aboutMe,
    required this.address,
  });

  factory SearchUser.fromJson(Map<String, dynamic> json) {
    return SearchUser(
      fullName: json['fullName'] ?? '',
      avata: json['avata'] ?? '',
      id: json['id'] ?? '',
      nickName: json['nickName'] ?? '',
      aboutMe: json['aboutMe'] ?? '',
      address: json['address'] ?? '',
    );
  }
}

class SearchPosts {
  final AccountSearchPost account;
  final String id;
  final String contentText;
  final String created_at;

  SearchPosts({
    required this.id,
    required this.account,
    required this.contentText,
    required this.created_at,
  });

  factory SearchPosts.fromJson(Map<String, dynamic> json) {
    return SearchPosts(
      id: json['id'] ?? '',
      account: json['account'] != null
          ? AccountSearchPost.fromJson(json['account']) 
          : AccountSearchPost(id: '', fullName: '', avata: ''),
      contentText: json['contentText'] ?? '',
      created_at: json['created_at'] ?? '',
    );
  }
}

class AccountSearchPost {
  final String id;
  final String fullName;
  final String avata;

  AccountSearchPost({
    required this.id,
    required this.fullName,
    required this.avata,
  });

  factory AccountSearchPost.fromJson(Map<String, dynamic> json) {
    return AccountSearchPost(
      id: json['id'] ?? '',
      fullName: json['fullName'] ?? '',
      avata: json['avata'] ?? '',
    );
  }
}

class ApiError {
  final String message;
  final String? details;

  ApiError({required this.message, this.details});

  factory ApiError.fromJson(Map<String, dynamic> json) {
    return ApiError(
      message: json['message'],
      details: json['details'], // Nếu có thông tin chi tiết lỗi từ server
    );
  }
}

class QuoteSendSorrowPost {
  final String contentText;

  const QuoteSendSorrowPost({required this.contentText});

  Map<String, dynamic> toJson() {
    return {
      'contentText': contentText,
    };
  }
}

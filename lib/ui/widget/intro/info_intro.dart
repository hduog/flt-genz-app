class IntroInfo {
  final String title;
  final String descriptions;
  final String image;

  IntroInfo({
    required this.title,
    required this.descriptions,
    required this.image,
  });
}

class InfoItems {
  List<IntroInfo> items = [
    IntroInfo(
      title: "Cộng đồng kết nối và chia sẻ",
      descriptions:
          "Chúng tôi tin rằng việc chia sẻ và kết nối với nhau là yếu tố quan trọng trong việc xây dựng một cộng đồng mạnh mẽ và hỗ trợ lẫn nhau trong hành trình vượt qua những khó khăn tâm lý.",
      image: "assets/icons/intro1.svg",
    ),
    IntroInfo(
      title: "Ngôi nhà dành cho bạn",
      descriptions:
          "Nơi đây không chỉ là một website, mà là một mái nhà chứa đựng tình yêu thương và sự chia sẻ, nơi mà bạn luôn được chào đón và quan trọng nhất là luôn được lắng nghe.",
      image: "assets/icons/trace.svg",
    ),
    IntroInfo(
      title: "Cung cấp hỗ trợ và giúp đỡ",
      descriptions:
          "Chúng tôi sẵn lòng lắng nghe và chia sẻ các phương pháp giải quyết, cung cấp thông tin hữu ích và định hướng cho các bạn trẻ trong quá trình hàn gắn và phục hồi tinh thần.",
      image: "assets/icons/intro3.svg",
    ),

  ];
}

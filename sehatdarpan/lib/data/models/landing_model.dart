class LandingModel {
  final String id;
  final String title;
  final String message;
  final String imageUrl;

  LandingModel({
    required this.id,
    required this.title,
    required this.message,
    required this.imageUrl,
  });

  factory LandingModel.fromJson(Map<String, dynamic> json) {
    return LandingModel(
      id: json['_id'],
      title: json['title'],
      message: json['message'],
      imageUrl: json['imageUrl'],
    );
  }
}

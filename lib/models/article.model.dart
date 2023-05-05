class Article {
  final String id;
  final String name;
  final String data;
  // ignore: non_constant_identifier_names
  final String image_url;

  Article(
      {required this.id,
      required this.name,
      required this.data,
      // ignore: non_constant_identifier_names
      required this.image_url});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['_id']!,
      name: json['name']!,
      data: json['data']!,
      image_url: json['image_url']!,
    );
  }
}

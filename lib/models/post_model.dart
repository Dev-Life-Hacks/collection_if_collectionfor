class PostModel {
  final String title;
  final String description;
  final String? imageUrl;
  final List<String>? tags;

  PostModel({
    required this.title,
    required this.description,
    this.imageUrl,
    this.tags,
  });
}

class Category {
  final String name;

  const Category({
    required this.name
  });

  factory Category.fromJson(String json) {
    return Category(name: json);
  }
}

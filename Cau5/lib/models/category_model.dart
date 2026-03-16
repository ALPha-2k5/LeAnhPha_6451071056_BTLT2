class CategoryModel {
  final String name;
  final List<String> items;
  bool isExpanded;

  CategoryModel({
    required this.name,
    required this.items,
    this.isExpanded = false,
  });
}
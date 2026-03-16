class ProductModel {
  final String name;
  final int price;
  final String imageUrl;
  final double rating;

  const ProductModel({
    required this.name,
    required this.price,
    required this.imageUrl,
    this.rating = 4.5,
  });
}
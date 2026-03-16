import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../utils/formatter.dart';

class ProductTileWidget extends StatelessWidget {
  final ProductModel product;

  const ProductTileWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(
          product.name,
          style: const TextStyle(fontSize: 12),
        ),
        subtitle: Text(
          Formatter.currency(product.price),
          style: const TextStyle(color: Colors.amber, fontSize: 11),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => Container(
            color: Colors.grey.shade200,
            child: const Icon(Icons.image, size: 40),
          ),
        ),
      ),
    );
  }
}

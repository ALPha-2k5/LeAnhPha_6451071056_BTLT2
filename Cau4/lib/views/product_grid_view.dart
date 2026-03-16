import 'package:flutter/material.dart';
import '../utils/product_data.dart';
import '../widget/product_tile_widget.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cửa Hàng Thể Thao'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(24),
          child: Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              'MSSV: 6451071056',
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.75,
        children: ProductData.items
            .map((p) => ProductTileWidget(product: p))
            .toList(),
      ),
    );
  }
}
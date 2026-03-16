import 'package:flutter/material.dart';
import '../utils/food_data.dart';
import '../widget/food_card_widget.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DANH SÁCH MÓN ĂN'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(24),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Text(
              'MSSV: 6451071056',
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: FoodData.items.length,
        itemBuilder: (context, index) =>
            FoodCardWidget(food: FoodData.items[index]),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../models/category_model.dart';

class ExpansionPanelWidget extends StatelessWidget {
  final CategoryModel category;

  const ExpansionPanelWidget({super.key, required this.category});

  ExpansionPanel build_panel() {
    return ExpansionPanel(
      headerBuilder: (context, isExpanded) => ListTile(
        title: Text(
          category.name,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
      body: Column(
        children: category.items
            .map((item) => ListTile(
                  title: Text(item),
                  dense: true,
                ))
            .toList(),
      ),
      isExpanded: category.isExpanded,
    );
  }

  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
}
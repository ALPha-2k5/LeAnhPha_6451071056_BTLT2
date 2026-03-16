import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../utils/category_data.dart';

class ExpansionMenuView extends StatefulWidget {
  const ExpansionMenuView({super.key});

  @override
  State<ExpansionMenuView> createState() => _ExpansionMenuViewState();
}

class _ExpansionMenuViewState extends State<ExpansionMenuView> {
  late List<CategoryModel> _categories;

  @override
  void initState() {
    super.initState();
    _categories = CategoryData.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category Menu'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'Expansion Menu',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Using ExpansionPanelList',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'MSSV: 6451071056',
                    style: TextStyle(fontSize: 16, color: Colors.blueAccent, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            ExpansionPanelList(
              elevation: 2,
              expandedHeaderPadding: EdgeInsets.zero,
              expansionCallback: (index, isExpanded) {
                setState(() {
                  _categories[index].isExpanded = !_categories[index].isExpanded;
                });
              },
              children: _categories
                  .map(
                    (cat) => ExpansionPanel(
                      headerBuilder: (ctx, isExpanded) => ListTile(
                        title: Text(
                          cat.name,
                          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                      body: Column(
                        children: cat.items
                            .map((item) => ListTile(title: Text(item), dense: true))
                            .toList(),
                      ),
                      isExpanded: cat.isExpanded,
                    ),
                  )
                  .toList(),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'StatefulWidget Management',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
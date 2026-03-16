import '../models/category_model.dart';

class CategoryData {
  static List<CategoryModel> getCategories() => [
        CategoryModel(
          name: 'Fruits',
          items: ['Apple', 'Banana', 'Orange'],
          isExpanded: true,
        ),
        CategoryModel(
          name: 'Vegetables',
          items: ['Broccoli', 'Carrot', 'Tomato'],
        ),
        CategoryModel(
          name: 'Drinks',
          items: ['Coffee', 'Tea', 'Juice', 'Smoothie'],
        ),
      ];
}
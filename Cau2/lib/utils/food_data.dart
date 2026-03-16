import '../models/food_model.dart';

class FoodData {
  static const List<FoodModel> items = [
    FoodModel(
      name: 'Phở Bò',
      description: 'Phở Bò Đặc Biệt',
      price: 65000,
      imageUrl: 'https://images.unsplash.com/photo-1569050467447-ce54b3bbc37d?w=200',
    ),
    FoodModel(
      name: 'Bún Chả',
      description: 'Bún Chả Hà Nội',
      price: 55000,
      imageUrl: 'https://images.unsplash.com/photo-1583224964978-2257b8a897b6?w=200',
    ),
    FoodModel(
      name: 'Cơm Tấm',
      description: 'Cơm Tấm Sườn Bì Chả',
      price: 50000,
      imageUrl: 'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=200',
    ),
    FoodModel(
      name: 'Bánh Mì',
      description: 'Bánh Mì Thịt Nướng',
      price: 35000,
      imageUrl: 'https://images.unsplash.com/photo-1509722747041-616f39b57569?w=200',
    ),
    FoodModel(
      name: 'Gỏi Cuốn',
      description: 'Gỏi Cuốn Tôm Thịt',
      price: 40000,
      imageUrl: 'https://images.unsplash.com/photo-1562802378-063ec186a863?w=200',
    ),
  ];
}
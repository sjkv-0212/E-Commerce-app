import '../models/product.dart';

class ProductService {
  static List<Product> getProducts() {
    return [
      Product(
        id: 'p1',
        title: 'Shoes',
        description: 'Stylish running shoes',
        price: 999.0,
        imageUrl: 'https://via.placeholder.com/150',
      ),
      Product(
        id: 'p2',
        title: 'Watch',
        description: 'Luxury wrist watch',
        price: 1499.0,
        imageUrl: 'https://via.placeholder.com/150',
      ),
    ];
  }
}

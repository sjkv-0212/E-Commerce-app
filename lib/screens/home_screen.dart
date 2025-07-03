// screens/auth_screen.dart
class HomeScreen extends StatelessWidget {
  final List<Product> dummyProducts = [
    Product(
      id: '1',
      name: 'Nike Air Max',
      price: 120.99,
      imageUrl: 'https://example.com/shoe.jpg',
      description: 'Premium running shoes',
    ),
    // Add more products...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Shop Now'),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: dummyProducts.length,
        itemBuilder: (ctx, i) => ProductCard(
          product: dummyProducts[i],
          onTap: () => Navigator.pushNamed(
            context,
            '/product',
            arguments: dummyProducts[i],
          ),
        ),
      ),
    );
  }
}
// screens/products_screen.dart
class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsProvider>(context).items;
    
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/2,
      ),
      itemBuilder: (ctx, i) => ProductItem(products[i]),
      itemCount: products.length,
    );
  }
}
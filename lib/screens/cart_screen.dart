class CartScreen extends StatelessWidget {
  final List<Product> cartItems = []; // Replace with provider later

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Cart')),
      body: cartItems.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (ctx, i) => ListTile(
                leading: Image.network(cartItems[i].imageUrl, width: 50),
                title: Text(cartItems[i].name),
                subtitle: Text('\$${cartItems[i].price}'),
                trailing: IconButton(
                  icon: Icon(Icons.remove_circle),
                  onPressed: () {}, // Remove item
                ),
              ),
            ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          child: Text('Checkout - \$${_calculateTotal()}'),
          onPressed: () {},
        ),
      ),
    );
  }

  double _calculateTotal() {
    return cartItems.fold(0, (sum, item) => sum + item.price);
  }
}
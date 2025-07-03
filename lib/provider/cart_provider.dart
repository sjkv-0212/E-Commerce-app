// providers/cart_provider.dart
class CartProvider with ChangeNotifier {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => {..._items};

  void addItem(String productId, double price, String title) {
    if (_items.containsKey(productId)) {
      _items.update(productId, (existingItem) => 
        CartItem(existingItem.id, existingItem.title, existingItem.price, existingItem.quantity + 1));
    } else {
      _items.putIfAbsent(productId, () => 
        CartItem(productId, title, price, 1));
    }
    notifyListeners();
  }
}
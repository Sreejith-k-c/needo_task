class Cart {
  String name;
  double price;
  int quantity;
  Cart(this.name, this.price, this.quantity);
}

class ShoppingCart {
  List<Cart> items = [];

  void addItem(String name, double price, int quantity) {
    items.add(Cart(name, price, quantity));
  }

  double TotalCost() {
    double _totalCost = 0;
    for (var item in items) {
      _totalCost += item.price * item.quantity;
    }
    return _totalCost;
  }

  double discountDelivery(double totalCost) {
    double discountedCost = totalCost * 0.95;
    double totalCostAfterDelivery =
        discountedCost + 10;
    return totalCostAfterDelivery;
  }
}

void main() {
  ShoppingCart cart = ShoppingCart();

  cart.addItem('item1', 100.0, 2);
  cart.addItem('item2', 50.0, 1);
  cart.addItem('item3', 75.0, 3);

  double totalCost = cart.TotalCost();
  print('Total cost= ${totalCost.toStringAsFixed(2)} Rs');

  double finalCost =
      cart.discountDelivery(totalCost);
  print(
      'Final charge: ${finalCost.toStringAsFixed(2)} Rs');
}

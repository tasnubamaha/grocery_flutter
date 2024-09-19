import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Frappe", "20.00", "lib/images/frappe.jpg", Colors.blue],
    ["Flat", "30.00", "lib/images/flat white.jpg", Colors.green],
    ["Frappucino", "60.00", "lib/images/frappucino.jpg", Colors.red],
    ["Capacino", "20.00", "lib/images/coffee1.jpeg", Colors.yellow],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}

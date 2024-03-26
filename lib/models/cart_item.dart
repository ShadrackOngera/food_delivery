import 'package:food_delivery/models/food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddons;
  int quntity;

  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quntity = 1,
  });

  double get totalPrice {
    double addonsPrice =
        selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrice) * quntity;
  }
}

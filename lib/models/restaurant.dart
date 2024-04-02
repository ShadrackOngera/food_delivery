import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: 'Cheese Burger',
      description: 'Sweet Burger made with extra tasty thick cheese',
      imagePath: 'assets/images/burgers/burger-one.jpg',
      price: 200,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'extra cheese', price: 80),
        Addon(name: 'ketchup', price: 120),
        Addon(name: 'extra bacon', price: 399),
      ],
    ),
    Food(
      name: 'Beef Burger',
      description: 'Burger made with extra meaty beef, slightly roasted',
      imagePath: 'assets/images/burgers/burger-two.jpg',
      price: 276,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'extra cheese', price: 80),
        Addon(name: 'ketchup', price: 120),
        Addon(name: 'extra bacon', price: 399),
      ],
    ),
    Food(
      name: 'Kuku Burger',
      description: 'Sweet Burger made with extra tasty thick cheese',
      imagePath: 'assets/images/burgers/burger-three.jpg',
      price: 500,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'extra cheese', price: 80),
        Addon(name: 'ketchup', price: 120),
        Addon(name: 'extra bacon', price: 399),
      ],
    ),
    Food(
      name: 'Hawaiaan Burger',
      description: 'Sweet Burger made with extra tasty thick cheese',
      imagePath: 'assets/images/burgers/burger-four.jpg',
      price: 341,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'extra cheese', price: 80),
        Addon(name: 'ketchup', price: 120),
        Addon(name: 'extra bacon', price: 399),
      ],
    ),
    Food(
      name: 'Pork Burger',
      description: 'Sweet Burger made with extra tasty thick cheese',
      imagePath: 'assets/images/burgers/burger-five.jpg',
      price: 760,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'extra cheese', price: 80),
        Addon(name: 'ketchup', price: 120),
        Addon(name: 'extra bacon', price: 399),
      ],
    ),

    //salads
    Food(
      name: 'Cabbage Salad',
      description: 'Thinly cut to pieces for maximum taste',
      imagePath: 'assets/images/salads/salad-one.jpg',
      price: 760,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Salad', price: 80),
        Addon(name: 'Ketchup', price: 120),
        Addon(name: 'Tomato Sauce', price: 399),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description:
          'Classic salad with romaine lettuce, croutons, and Caesar dressing',
      imagePath: 'assets/images/salads/salad-two.jpg',
      price: 890,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 200),
        Addon(name: 'Shrimp', price: 250),
        Addon(name: 'Parmesan Cheese', price: 150),
      ],
    ),
    Food(
      name: 'Greek Salad',
      description:
          'Fresh salad with tomatoes, cucumbers, olives, and feta cheese',
      imagePath: 'assets/images/salads/salad-three.jpg',
      price: 820,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Lamb', price: 300),
        Addon(name: 'Red Onion', price: 100),
        Addon(name: 'Olive Oil', price: 80),
      ],
    ),
    Food(
      name: 'Spinach Salad',
      description:
          'Healthy salad with spinach, strawberries, almonds, and balsamic vinaigrette',
      imagePath: 'assets/images/salads/salad-four.jpg',
      price: 780,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Goat Cheese', price: 150),
        Addon(name: 'Walnuts', price: 120),
        Addon(name: 'Honey Mustard Dressing', price: 100),
      ],
    ),
    Food(
      name: 'Quinoa Salad',
      description:
          'Nutritious salad with quinoa, mixed vegetables, and lemon dressing',
      imagePath: 'assets/images/salads/salad-five.jpg',
      price: 850,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 180),
        Addon(name: 'Chickpeas', price: 120),
        Addon(name: 'Cilantro', price: 80),
      ],
    ),

    //sides
    Food(
      name: 'Garlic Breadsticks',
      description: 'Crunchy breadsticks with garlic butter',
      imagePath: 'assets/images/sides/side-one.jpg',
      price: 350,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Dip', price: 100),
        Addon(name: 'Marinara Sauce', price: 80),
        Addon(name: 'Pesto Dip', price: 120),
      ],
    ),
    Food(
      name: 'French Fries',
      description: 'Crispy potato fries seasoned to perfection',
      imagePath: 'assets/images/sides/side-two.jpg',
      price: 250,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Chili Cheese', price: 120),
        Addon(name: 'Truffle Aioli', price: 150),
        Addon(name: 'Sweet Potato Fries', price: 180),
      ],
    ),
    Food(
      name: 'Onion Rings',
      description: 'Golden battered onion rings',
      imagePath: 'assets/images/sides/side-three.jpg',
      price: 280,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'BBQ Sauce', price: 80),
        Addon(name: 'Ranch Dip', price: 100),
        Addon(name: 'Buffalo Sauce', price: 120),
      ],
    ),
    Food(
      name: 'Mashed Potatoes',
      description: 'Creamy mashed potatoes with gravy',
      imagePath: 'assets/images/sides/side-four.jpg',
      price: 300,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Bacon Bits', price: 120),
        Addon(name: 'Chives', price: 80),
        Addon(name: 'Crispy Onions', price: 100),
      ],
    ),
    Food(
      name: 'Coleslaw',
      description: 'Freshly shredded cabbage and carrots in creamy dressing',
      imagePath: 'assets/images/sides/side-five.jpg',
      price: 220,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Raisins', price: 50),
        Addon(name: 'Apple Cider Vinegar', price: 80),
        Addon(name: 'Pineapple Chunks', price: 100),
      ],
    ),

    //desserts
    Food(
      name: 'Chocolate Lava Cake',
      description: 'Decadent chocolate cake with a gooey molten center',
      imagePath: 'assets/images/desserts/dessert-one.jpg',
      price: 480,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Vanilla Ice Cream', price: 100),
        Addon(name: 'Whipped Cream', price: 80),
        Addon(name: 'Strawberry Sauce', price: 120),
      ],
    ),
    Food(
      name: 'New York Cheesecake',
      description: 'Rich and creamy cheesecake on a graham cracker crust',
      imagePath: 'assets/images/desserts/dessert-two.jpg',
      price: 550,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Blueberry Compote', price: 120),
        Addon(name: 'Caramel Drizzle', price: 100),
        Addon(name: 'Chocolate Shavings', price: 80),
      ],
    ),
    Food(
      name: 'Tiramisu',
      description:
          'Classic Italian dessert with layers of coffee-soaked ladyfingers and mascarpone cheese',
      imagePath: 'assets/images/desserts/dessert-three.jpg',
      price: 620,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Cocoa Powder', price: 80),
        Addon(name: 'Amaretto Liquor', price: 150),
        Addon(name: 'Mint Leaves', price: 50),
      ],
    ),
    Food(
      name: 'Fruit Tart',
      description:
          'Buttery pastry crust filled with custard and topped with fresh fruits',
      imagePath: 'assets/images/desserts/dessert-four.jpg',
      price: 510,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Kiwi Slices', price: 80),
        Addon(name: 'Mango Cubes', price: 100),
        Addon(name: 'Passion Fruit Glaze', price: 120),
      ],
    ),
    Food(
      name: 'Banoffee Pie',
      description:
          'Indulgent pie with layers of bananas, toffee, and whipped cream',
      imagePath: 'assets/images/desserts/dessert-five.jpg',
      price: 590,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Toasted Almonds', price: 100),
        Addon(name: 'Butterscotch Sauce', price: 120),
        Addon(name: 'Chocolate Shards', price: 80),
      ],
    ),

    //drinks
    Food(
      name: 'Iced Coffee',
      description: 'Chilled coffee served over ice',
      imagePath: 'assets/images/drinks/drink-one.jpg',
      price: 320,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Milk', price: 50),
        Addon(name: 'Vanilla Syrup', price: 80),
        Addon(name: 'Whipped Cream', price: 60),
      ],
    ),
    Food(
      name: 'Freshly Squeezed Orange Juice',
      description: 'Juicy oranges squeezed to perfection',
      imagePath: 'assets/images/drinks/drink-two.jpg',
      price: 280,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Ginger Shot', price: 100),
        Addon(name: 'Mint Leaves', price: 50),
        Addon(name: 'Sparkling Water', price: 70),
      ],
    ),
    Food(
      name: 'Classic Mojito',
      description: 'Refreshing cocktail with rum, mint, lime, and soda water',
      imagePath: 'assets/images/drinks/drink-three.jpg',
      price: 450,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Raspberry', price: 80),
        Addon(name: 'Coconut Water', price: 100),
        Addon(name: 'Agave Syrup', price: 60),
      ],
    ),
    Food(
      name: 'Green Tea',
      description: 'Steaming hot green tea',
      imagePath: 'assets/images/drinks/drink-four.jpg',
      price: 220,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Honey', price: 50),
        Addon(name: 'Lemon Slice', price: 30),
        Addon(name: 'Ginseng', price: 80),
      ],
    ),
    Food(
      name: 'Mango Smoothie',
      description: 'Blended mangoes with yogurt and honey',
      imagePath: 'assets/images/drinks/drink-five.jpg',
      price: 380,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Chia Seeds', price: 80),
        Addon(name: 'Protein Powder', price: 120),
        Addon(name: 'Almond Milk', price: 100),
      ],
    ),
  ];

  //Getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  //Operations

  // user cart

  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if foo items are the same
      bool isSameFood = item.food == food;

      // check if list of selected addons is ssame
      bool isSameAddons = const ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );

      return isSameFood && isSameAddons;
    });

    // if item already exists increase its quantity

    if (cartItem != null) {
      cartItem.quntity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // remove from cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quntity > 1) {
        _cart[cartIndex].quntity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // total price of cart

  double getTotalPrice() {
    double total = 0.00;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quntity;
    }
    return total;
  }

  // number of items in cart

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quntity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //Helpers

  //generate receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    //format date to include upto Second only
    String formattedDated =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDated);
    receipt.writeln();

    receipt.writeln("---------");

    for (final cartItem in cart) {
      receipt.writeln(
          "${cartItem.quntity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("Add Ons : ${_formatAddon(cartItem.selectedAddons)}");
      }
      receipt.writeln();

      receipt.writeln("---------");
      receipt.writeln();
      receipt.writeln("Total Items: ${getTotalItemCount()}");
      receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    }
    return receipt.toString();
  }

  // format double value to money
  String _formatPrice(double price) {
    return "Ksh${price.toStringAsFixed(2)}";
  }

  //format list of addons
  String _formatAddon(List<Addon> addons) {
    return addons.map((addon) => "${addon.name} (${addon.price})").join(", ");
  }
}

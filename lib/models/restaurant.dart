import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

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
        Addons(name: 'extra cheese', price: 80),
        Addons(name: 'ketchup', price: 120),
        Addons(name: 'extra bacon', price: 399),
      ],
    ),
    Food(
      name: 'Beef Burger',
      description: 'Burger made with extra meaty beef, slightly roasted',
      imagePath: 'assets/images/burgers/burger-two.jpg',
      price: 276,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'extra cheese', price: 80),
        Addons(name: 'ketchup', price: 120),
        Addons(name: 'extra bacon', price: 399),
      ],
    ),
    Food(
      name: 'Kuku Burger',
      description: 'Sweet Burger made with extra tasty thick cheese',
      imagePath: 'assets/images/burgers/burger-three.jpg',
      price: 500,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'extra cheese', price: 80),
        Addons(name: 'ketchup', price: 120),
        Addons(name: 'extra bacon', price: 399),
      ],
    ),
    Food(
      name: 'Hawaiaan Burger',
      description: 'Sweet Burger made with extra tasty thick cheese',
      imagePath: 'assets/images/burgers/burger-four.jpg',
      price: 341,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'extra cheese', price: 80),
        Addons(name: 'ketchup', price: 120),
        Addons(name: 'extra bacon', price: 399),
      ],
    ),
    Food(
      name: 'Pork Burger',
      description: 'Sweet Burger made with extra tasty thick cheese',
      imagePath: 'assets/images/burgers/burger-five.jpg',
      price: 760,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: 'extra cheese', price: 80),
        Addons(name: 'ketchup', price: 120),
        Addons(name: 'extra bacon', price: 399),
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
        Addons(name: 'Salad', price: 80),
        Addons(name: 'Ketchup', price: 120),
        Addons(name: 'Tomato Sauce', price: 399),
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
        Addons(name: 'Grilled Chicken', price: 200),
        Addons(name: 'Shrimp', price: 250),
        Addons(name: 'Parmesan Cheese', price: 150),
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
        Addons(name: 'Grilled Lamb', price: 300),
        Addons(name: 'Red Onion', price: 100),
        Addons(name: 'Olive Oil', price: 80),
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
        Addons(name: 'Goat Cheese', price: 150),
        Addons(name: 'Walnuts', price: 120),
        Addons(name: 'Honey Mustard Dressing', price: 100),
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
        Addons(name: 'Avocado', price: 180),
        Addons(name: 'Chickpeas', price: 120),
        Addons(name: 'Cilantro', price: 80),
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
        Addons(name: 'Cheese Dip', price: 100),
        Addons(name: 'Marinara Sauce', price: 80),
        Addons(name: 'Pesto Dip', price: 120),
      ],
    ),
    Food(
      name: 'French Fries',
      description: 'Crispy potato fries seasoned to perfection',
      imagePath: 'assets/images/sides/side-two.jpg',
      price: 250,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'Chili Cheese', price: 120),
        Addons(name: 'Truffle Aioli', price: 150),
        Addons(name: 'Sweet Potato Fries', price: 180),
      ],
    ),
    Food(
      name: 'Onion Rings',
      description: 'Golden battered onion rings',
      imagePath: 'assets/images/sides/side-three.jpg',
      price: 280,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'BBQ Sauce', price: 80),
        Addons(name: 'Ranch Dip', price: 100),
        Addons(name: 'Buffalo Sauce', price: 120),
      ],
    ),
    Food(
      name: 'Mashed Potatoes',
      description: 'Creamy mashed potatoes with gravy',
      imagePath: 'assets/images/sides/side-four.jpg',
      price: 300,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'Bacon Bits', price: 120),
        Addons(name: 'Chives', price: 80),
        Addons(name: 'Crispy Onions', price: 100),
      ],
    ),
    Food(
      name: 'Coleslaw',
      description: 'Freshly shredded cabbage and carrots in creamy dressing',
      imagePath: 'assets/images/sides/side-five.jpg',
      price: 220,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: 'Raisins', price: 50),
        Addons(name: 'Apple Cider Vinegar', price: 80),
        Addons(name: 'Pineapple Chunks', price: 100),
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
        Addons(name: 'Vanilla Ice Cream', price: 100),
        Addons(name: 'Whipped Cream', price: 80),
        Addons(name: 'Strawberry Sauce', price: 120),
      ],
    ),
    Food(
      name: 'New York Cheesecake',
      description: 'Rich and creamy cheesecake on a graham cracker crust',
      imagePath: 'assets/images/desserts/dessert-two.jpg',
      price: 550,
      category: FoodCategory.desserts,
      availableAddons: [
        Addons(name: 'Blueberry Compote', price: 120),
        Addons(name: 'Caramel Drizzle', price: 100),
        Addons(name: 'Chocolate Shavings', price: 80),
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
        Addons(name: 'Cocoa Powder', price: 80),
        Addons(name: 'Amaretto Liquor', price: 150),
        Addons(name: 'Mint Leaves', price: 50),
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
        Addons(name: 'Kiwi Slices', price: 80),
        Addons(name: 'Mango Cubes', price: 100),
        Addons(name: 'Passion Fruit Glaze', price: 120),
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
        Addons(name: 'Toasted Almonds', price: 100),
        Addons(name: 'Butterscotch Sauce', price: 120),
        Addons(name: 'Chocolate Shards', price: 80),
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
        Addons(name: 'Milk', price: 50),
        Addons(name: 'Vanilla Syrup', price: 80),
        Addons(name: 'Whipped Cream', price: 60),
      ],
    ),
    Food(
      name: 'Freshly Squeezed Orange Juice',
      description: 'Juicy oranges squeezed to perfection',
      imagePath: 'assets/images/drinks/drink-two.jpg',
      price: 280,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: 'Ginger Shot', price: 100),
        Addons(name: 'Mint Leaves', price: 50),
        Addons(name: 'Sparkling Water', price: 70),
      ],
    ),
    Food(
      name: 'Classic Mojito',
      description: 'Refreshing cocktail with rum, mint, lime, and soda water',
      imagePath: 'assets/images/drinks/drink-three.jpg',
      price: 450,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: 'Raspberry', price: 80),
        Addons(name: 'Coconut Water', price: 100),
        Addons(name: 'Agave Syrup', price: 60),
      ],
    ),
    Food(
      name: 'Green Tea',
      description: 'Steaming hot green tea',
      imagePath: 'assets/images/drinks/drink-four.jpg',
      price: 220,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: 'Honey', price: 50),
        Addons(name: 'Lemon Slice', price: 30),
        Addons(name: 'Ginseng', price: 80),
      ],
    ),
    Food(
      name: 'Mango Smoothie',
      description: 'Blended mangoes with yogurt and honey',
      imagePath: 'assets/images/drinks/drink-five.jpg',
      price: 380,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: 'Chia Seeds', price: 80),
        Addons(name: 'Protein Powder', price: 120),
        Addons(name: 'Almond Milk', price: 100),
      ],
    ),
  ];

  //Getters
  List<Food> get menu => _menu;

  //Operations

  // add to cart

  // remove from cart

  // total price of cart

  // number of items in cart

  //clear cart

  //Helpers

  //generate receipt
  // format double value to money
  //format list of addons
}

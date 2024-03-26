class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addons> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

enum FoodCategory {
  burgers,
  salads,
  desserts,
  drinks,
  sides,
}

class Addons {
  final String name;
  final double price;

  Addons({
    required this.name,
    required this.price,
  });
}

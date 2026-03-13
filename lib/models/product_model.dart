class Product {
  String name;
  String image;
  double price;
  String categpry;

  Product({
    required this.categpry,
    required this.image,
    required this.name,
    required this.price,
  });
}

List<String> categories = [
  "phones",
  "laptops",
  "clothes",
  "shoes",
  "accessories",
  "sports",
  "food",
];

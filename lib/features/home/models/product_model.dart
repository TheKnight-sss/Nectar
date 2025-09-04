class ProductModel {
  final int id;
  final String name;
  final String image;
  int quantity;
  final double price;

  ProductModel(
     {
    required this.id,
    required this.name,
    required this.image,
    required this.quantity,
    required this.price,
  });
}

List<ProductModel> products = [
  ProductModel(
    id: 1,
    name: "Apple",
    image: "assets/images/apple.png",
    quantity: 1,
    price: 3.99,
  ),
  ProductModel(
    id: 2,
    name: "Banana",
    image: "assets/images/banana.png",
    quantity: 1,
    price: 2.99,
  ),
  ProductModel(
    id: 3,
    name: "Orange",
    image: "assets/images/apple.png",
    quantity: 1,
    price: 4.99,
  ),
  ProductModel(
    id: 4,
    name: "Grapes",
    image: "assets/images/banana.png",
    quantity: 1,
    price: 5.99,
  ),
];

List<ProductModel> exproducts = [
  ProductModel(
    id: 1,
    name: "Apple",
    image: "assets/images/apple.png",
    quantity: 1,
    price: 3.99,
  ),
  ProductModel(
    id: 2,
    name: "Banana",
    image: "assets/images/banana.png",
    quantity: 1,
    price: 2.99,
  ),
  ProductModel(
    id: 3,
    name: "Orange",
    image: "assets/images/apple.png",
    quantity: 1,
    price: 4.99,
  ),
  ProductModel(
    id: 4,
    name: "Grapes",
    image: "assets/images/banana.png",
    quantity: 1,
    price: 5.99,
  ),
];

List<ProductModel> offerproducts = [
  ProductModel(
    id: 5,
    name: "Apple",
    image: "assets/images/apple.png",
    quantity: 1,
    price: 3.99,
  ),
  ProductModel(
    id: 6,
    name: "Banana",
    image: "assets/images/banana.png",
    quantity: 1,
    price: 2.99,
  ),
  ProductModel(
    id: 7,
    name: "Orange",
    image: "assets/images/apple.png",
    quantity: 1,
    price: 4.99,
  ),
  ProductModel(
    id: 8,
    name: "Grapes",
    image: "assets/images/banana.png",
    quantity: 1,
    price: 5.99,
  ),
];
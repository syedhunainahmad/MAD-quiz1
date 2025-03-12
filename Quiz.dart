

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class ShoppingCart {
  List<Product> items = [];

  void addProduct(Product product) {
    items.add(product);
  }

  double getTotalCost() {
    double total = 0;
    for (var item in items) {
      total = total + item.price;
    }
    return total;
  }

  void displayCart() {
    if (items.isEmpty) {
      print("Your cart is empty.");
    } else {
      print("Your cart contains:");
      for (var item in items) {
        print("${item.name} - ${item.price}");
      }
      print("Total cost: ${getTotalCost()}");
    }
  }
}

void main() {
  List<Product> availableProducts = [
    Product("Apple", 0.99),
    Product("Banana", 0.59),
    Product("Orange", 1.29),
    Product("Milk", 2.49),
    Product("Bread", 1.99),
  ];

  ShoppingCart cart = ShoppingCart();

  while (true) {
    print("Available products:");
    for (int i = 0; i < availableProducts.length; i++) {
      print("${i + 1}. ${availableProducts[i].name} - ${availableProducts[i].price}");
    }
    print("${availableProducts.length + 1}. View cart");
    print("${availableProducts.length + 2}. Exit");

    print("Enter your choice: ");


  }
}
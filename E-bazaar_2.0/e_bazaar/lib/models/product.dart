class Product {
  static int productId=0;
  String? name;
  String? discription;
  int? productInStock;
  double? price;

Product () {
  productId++;
}
  int? get getProductId {
    return productId;
  }

  String? get getName {
    return name;
  }

  set setName(String name) {
    this.name = name;
  }

  String? get getdiscription {
    return discription;
  }

  set setDiscription(String discription) {
    this.discription = discription;
  }

  int? get getProductInStock {
    return productInStock;
  }

  set setProductInStock(int procuctInStocke) {
    this.productInStock = productInStock;
  }

  double? get getPrice {
    return price;
  }

  set setPrice(double price) {
    this.price = price;
  }
}

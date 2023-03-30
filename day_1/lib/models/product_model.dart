class Product {
  int? id;
  String? name;
  double? price;
  String? category;
  String? date;
  String? imagePath;

  Product({this.id, this.name, this.price, this.category, this.date, this.imagePath});

  @override
  String toString() {
    return 'Product{id: $id, name: $name, price: $price, category: $category, date: $date, imagePath: $imagePath}';
  }
}
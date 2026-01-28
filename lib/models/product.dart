class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String thumbnail;
  final String? brand;
  final String? category;
  final double? rating;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnail,
    this.brand,
    this.category,
    this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
      thumbnail: json['thumbnail'],
      brand: json['brand'],
      category: json['category'],
      rating: json['rating'] != null ? (json['rating'] as num).toDouble() : null,
    );
  }
}
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ProductService {
  static const String baseUrl = 'https://dummyjson.com/products';

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(baseUrl));
    final Map<String, dynamic> data = json.decode(response.body);
    final List<dynamic> productsJson = data['products'];
    
    return productsJson.map((json) => Product.fromJson(json)).toList();
  }
}
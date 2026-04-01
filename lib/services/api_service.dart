import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/product.dart';
class ApiService {
  static const String _apiUrl = 'https://dummyjson.com/products';

  static Future<List<Product>> fetchProducts() async {
    try {
      String url;

      if (kIsWeb) {
        url = 'https://corsproxy.io/?$_apiUrl';
      } else {
        url = _apiUrl;
      }

      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<dynamic> jsonList = data['products'];

        return jsonList.map((json) => Product.fromJson(json)).toList();
      } else {
        throw Exception('Status: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
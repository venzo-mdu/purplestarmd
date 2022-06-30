import 'dart:convert';
import '../../models/SaleCategories.dart';
import 'package:http/http.dart' as http;

Future<List<SaleCategories>> fetchProduct() async {
  var url = Uri.parse('https://mocki.io/v1/74d9dc9d-e33a-4fd3-b358-328d07be6aed');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final parsedofjson = jsonDecode(response.body).cast<Map<String, dynamic>>();
    print(parsedofjson.map<SaleCategories>((json) => SaleCategories.fromJson(json)).toList());
    return parsedofjson.map<SaleCategories>((json) => SaleCategories.fromJson(json)).toList();

  } else {
    throw Exception('Failed to load Products');
  }
}
import 'dart:convert';
import 'package:purplestarmd/models/SaleCategories.dart';
import 'package:http/http.dart' as http;

Future<List<SalesCategory>> fetchProduct() async {
  var URL = Uri.parse('https://mocki.io/v1/74d9dc9d-e33a-4fd3-b358-328d07be6aed');

  final response = await http.get(URL);

  if (response.statusCode == 200) {
    final parsedOfJson = json.decode(response.body).cast<Map<String, dynamic>>();
    print(parsedOfJson);
    return parsedOfJson.map<SalesCategory>((json) => SalesCategory.fromMap(json)).toList();
  } else {
    throw Exception('404, Unable to load Products');
  }
}
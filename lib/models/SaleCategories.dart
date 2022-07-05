import 'dart:convert';

List<SalesCategory> postFromJson(String str) =>
List<SalesCategory>.from(json.decode(str).map((x) => SalesCategory.fromMap(x)));

class ProductType {
  String type1;
  String type2;
  String type3;
  ProductType(this.type1, this.type2, this.type3);

  factory ProductType.fromJson(dynamic json) {
    return ProductType(json['type1'] as String, json['type2'] as String,json['type3'] as String);
  }

  @override
  String toString() {
    return '{ $type1, $type2, $type3 }';
  }
}

class SalesCategory {
  SalesCategory({
    required this.productId,
    required this.title,
    required this.made,
    required this.productImageUrl,
    required this.strains,
    required this.price,
    required this.productType,
  });

  int productId;
  String title;
  String made;
  String productImageUrl;
  String strains;
  String price;
  ProductType productType;

  factory SalesCategory.fromMap(Map<String, dynamic> json) => SalesCategory(
      productId: json["productId"],
      title: json["title"],
      made: json["made"],
      productImageUrl: json["productImageUrl"],
      strains: json["strains"],
      price: json["price"],
      productType: ProductType.fromJson(json["productType"]));
}

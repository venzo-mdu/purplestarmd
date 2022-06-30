import 'dart:convert';
import 'dart:ffi';

class ProductType {
  String type1;
  String type2;
  String type3;

  ProductType({
    required this.type1,
    required this.type2,
    required this.type3,
  });

  factory ProductType.fromJson(Map<String, dynamic> json) =>
      ProductType(
        type1: json['type1'],
        type2: json['type2'],
        type3: json['type3'],
      );

    Map<String, dynamic> toJson() => {
      'type1': type1,
      'type2': type2,
      'type3': type3,
    };
}

class SaleCategories {
  int productId;
  String title;
  String made;
  String productImageUrl;
  String strains;
  Double price;
  ProductType productType;

  SaleCategories({
    required this.productId,
    required this.title,
    required this.made,
    required this.productImageUrl,
    required this.strains,
    required this.price,
    required this.productType,
  });



  factory SaleCategories.fromJson(Map<String, dynamic> json) =>
      SaleCategories(
        productId: json['productId'],
        title: json['title'],
        made: json['made'],
        productImageUrl: json['productImageUrl'],
        strains: json['strains'],
        price: json['price'],
        productType: ProductType.fromJson(json["productType"])
      );

  Map<String, dynamic> toJson() =>
      {
        'productId': productId,
        'title': title,
        'made': made,
        'productImageUrl': productImageUrl,
        'strains': strains,
        'price': price,
      };




  // factory SaleCategories.fromJson(Map<String, dynamic> json) {
  //   final productId = json['productId'];
  //   final title = json['title'];
  //   final made = json['made'];
  //   final productImageUrl = json['productImageUrl'];
  //   final strains = json['strains'];
  //   final price = json['price'];
  //   return SaleCategories(productId: productId, title: title, made: made, productImageUrl: productImageUrl, strains: strains, price: price);
  // }
  //
  // Map<String, dynamic> toJson() {
  //   return {
  //     'productId': productId,
  //     'title': title,
  //     'made': made,
  //     'productImageUrl': productImageUrl,
  //     'strains': strains,
  //     'price': price,
  //   };
  // }


}

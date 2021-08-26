import 'dart:convert';
import 'package:drohealth/constants/web_address.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:drohealth/data/models/Product.dart';
import 'package:drohealth/data/providers/product_provider.dart';

abstract class ProductRepository{
  Future<List<Product>> getProductInfo();

}

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<Product>> getProductInfo() async {
    List<Product> products = [];
    var response = await http.get(Uri.parse(productAddress));
    if (response.statusCode == 200) {
      var data = await json.decode(response.body);
      data.map((product) => products.add(Product.fromJson(product))).toList();
      return products;
    }else{
      throw Exception();
    }
  }
}

import 'dart:convert';

import 'package:drohealth/constants/web_address.dart';
import 'package:drohealth/data/models/Product.dart';
import 'package:http/http.dart' show Client;

class ProductAPiProvider {
  Client client = Client();

  Future<dynamic> getProducts() async {
    final response = await client.get(Uri.parse(productAddress));
    print(response.body.toString());
    return response;

  }
}

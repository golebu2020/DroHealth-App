import 'package:drohealth/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

TextEditingController _searchController = TextEditingController();

Widget SearchBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
    child: Container(
      height: 60.0,
      width: double.infinity,
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Search for a product",
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: Colors.grey[300], width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: Colors.grey[300], width: 1.5),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.search,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          suffixIcon: InkWell(
              child: Icon(
                Icons.close,
                color: Colors.black.withOpacity(0.6),
              ),
              onTap: () {
                _searchController.clear();
              }),
        ),
      ),
    ),
  );
}

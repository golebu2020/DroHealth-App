import 'package:flutter/material.dart';

Widget ErrorIndicator(BuildContext context, String message) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Text(
        'An error has occurred.\nPlease Check your Internet Connection',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

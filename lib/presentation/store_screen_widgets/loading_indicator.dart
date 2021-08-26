import 'package:flutter/material.dart';

Widget LoadingIndicator(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 200.0),
    child: Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(
            Colors.black45.withOpacity(0.3)),
        backgroundColor: Colors.white,
        strokeWidth: 7,
      ),
    ),
  );
}

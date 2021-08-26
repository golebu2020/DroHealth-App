import 'package:drohealth/constants/colors.dart';
import 'package:drohealth/data/models/Product.dart';
import 'package:flutter/material.dart';

class CompanyLogo extends StatelessWidget {
  CompanyLogo({this.product});
  Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: grey,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SOLD BY',
                style: TextStyle(
                    fontSize: 13, color: grey, fontWeight: FontWeight.w900),
              ),
              Text(
                product.company,
                style: TextStyle(
                    fontSize: 11,
                    color: droTurquoise,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

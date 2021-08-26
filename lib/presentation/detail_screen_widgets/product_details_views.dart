import 'package:drohealth/constants/colors.dart';
import 'package:flutter/material.dart';

class ProductDetailsViews extends StatelessWidget {
  ProductDetailsViews({@required this.desc, @required this.info, @required this.descIcon});
  final String desc;
  final String info;
  final String descIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(descIcon,
          height: 30,
          width: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                desc,
                style: TextStyle(
                    fontSize: 11, color: grey, fontWeight: FontWeight.w900),
              ),
              Text(
                info,
                style: TextStyle(
                    fontSize: 10,
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

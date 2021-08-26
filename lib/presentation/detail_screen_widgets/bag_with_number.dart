import 'package:drohealth/constants/colors.dart';
import 'package:flutter/material.dart';

class BagWithNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40,
        padding: EdgeInsets.only(left: 17, right:17),
        decoration: BoxDecoration(
          color: droPurple,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/bag_icon.png", height: 20, width: 20,),
            Text(
              '3',
              style: TextStyle(
                  color: Colors.white, fontSize: 15, fontFamily: "Proxima"),
            ),
          ],
        ),
      ),
    );
  }
}

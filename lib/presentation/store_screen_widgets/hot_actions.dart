import 'package:drohealth/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotActions extends StatefulWidget {
  HotActions({Key key}) : super(key: key);

  @override
  _HotActionsState createState() => _HotActionsState();
}

class _HotActionsState extends State<HotActions> {
  final up_down = 'assets/images/up_down_arrow_icon.svg';
  final filter = 'assets/images/filter_icon.svg';
  final search = 'assets/images/search_icon.svg';
  final cancel = 'assets/images/close_icon.svg';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 80.0, right: 80.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(0.06),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.all(10),
                child: SvgPicture.asset(
                  up_down,
                  height: 15.0,
                  width: 15.0,
                  fit: BoxFit.cover,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(0.06),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.all(10),
                child: SvgPicture.asset(
                  filter,
                  height: 15.0,
                  width: 15.0,
                  fit: BoxFit.cover,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(0.06),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.all(10),
                child: SvgPicture.asset(
                  search,
                  height: 15.0,
                  width: 15.0,
                  fit: BoxFit.cover,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 6.0,),
      ],
    );
  }
}

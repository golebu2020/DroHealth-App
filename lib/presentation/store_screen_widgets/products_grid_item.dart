import 'package:drohealth/constants/colors.dart';
import 'package:drohealth/data/models/Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductGridItem extends StatelessWidget {
  ProductGridItem(
      {@required this.context, @required this.product, @required this.pos});
  final BuildContext context;
  final List<Product> product;
  final int pos;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Card(
        shadowColor: Colors.white,
        elevation: 3.0,
        margin: EdgeInsets.only(
          top: 10.0,
        ),
        //color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15),
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        child: Container(
          height: height / 2.42,
          width: width / 2,
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Center(
                    child: Image.network(
                      product[pos].picture,
                      fit: BoxFit.fill,
                      height: 130,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  product[pos].title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Expanded(
                child: Text(
                  product[pos].subtitle,
                  style: TextStyle(fontWeight: FontWeight.bold, color: grey),
                ),
              ),
              Expanded(
                child: Text(
                  product[pos].description,
                  style: TextStyle(fontWeight: FontWeight.bold, color: grey),
                ),
              ),
              Expanded(
                flex: 0,
                child: SizedBox(
                  height: height / 100,
                ),
              ),
              Expanded(
                flex: 2,
                  child: priceDisplay(
                    height,
                    width,
                    product[pos].price,
                  )),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }

  Widget priceDisplay(double height, double width, int price) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
          height: height / 25,
          width: width / 5,
          child: Center(
            child: Text(
              'N$price',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Proxima',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: grey,
            borderRadius: BorderRadius.circular(20.0),
          )),
    );
  }
}

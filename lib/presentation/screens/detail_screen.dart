import 'package:drohealth/constants/colors.dart';
import 'package:drohealth/data/models/Product.dart';
import 'package:drohealth/logic/blocs/increment_packs_bloc/pack_bloc.dart';
import 'package:drohealth/presentation/detail_screen_widgets/add_sub.dart';
import 'package:drohealth/presentation/detail_screen_widgets/bag_with_number.dart';
import 'package:drohealth/presentation/detail_screen_widgets/company_logo.dart';
import 'package:drohealth/presentation/detail_screen_widgets/product_details_views.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailScreen extends StatelessWidget {
  Product product;
  int index;

  DetailScreen({@required this.product, @required this.index});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Detail Screen',
      theme: ThemeData(
        fontFamily: 'Proxima',
      ),
      home: BlocProvider(
        create: (context) => PackBloc(),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            leading: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            actions: [
              Padding(
                padding:
                const EdgeInsets.only(right: 10.0, top: 2.0, bottom: 2.0),
                child: BagWithNumber(),
              ),
            ],
          ),
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 20,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Hero(
                            tag: index.toString(),
                            child: Image.network(
                              product.picture,
                              height: 150,
                              fit: BoxFit.contain,
                            ),
                          )),
                      SizedBox(height: 5.0),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          product.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          product.subtitle,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      CompanyLogo(product: product),
                      SizedBox(height: 15.0),
                      Align(
                        alignment: Alignment.topLeft,
                        child: AddSub(product: product),
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'PRODUCT DETAILS',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: grey,
                                    fontSize: 14),
                              ),
                              SizedBox(height: 15.0),
                              ProductDetailsViews(
                                desc: 'PACK SIZE',
                                info: product.size,
                                descIcon: 'assets/images/pack.png',
                              ),
                              SizedBox(height: 15.0),
                              ProductDetailsViews(
                                desc: 'CONSTITUENT',
                                info: product.consitutents,
                                descIcon: 'assets/images/drug.png',
                              ),
                              SizedBox(height: 15.0),
                              ProductDetailsViews(
                                desc: 'DISPENSED IN',
                                info: product.dispensed,
                                descIcon: 'assets/images/size.png',
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 29.0),
                            child: ProductDetailsViews(
                              desc: 'PRODUCT ID',
                              info: product.id,
                              descIcon: 'assets/images/size.png',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        "1 pack of Garlic Oil contains 3 unit(s) of tablet(s)",
                        style: TextStyle(
                            fontSize: 11,
                            color: grey,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: 70.0),
                      Container(
                        height: 50.0,
                        width: 255.0,
                        child: RaisedButton.icon(
                          //shape: ShapeBorder.lerp(ShapeBorder()., b, t)
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: droPurple,
                          label: Text(
                            'Add to bag',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          icon: Icon(
                            Icons.add_shopping_cart_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                //Image.asset("assets/images/drug.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:drohealth/data/models/Product.dart';
import 'package:drohealth/presentation/screens/detail_screen.dart';
import 'package:drohealth/presentation/store_screen_widgets/products_grid_item.dart';
import 'package:flutter/material.dart';


  Widget ProductsView(BuildContext context, List<Product> product) {
    return Container(
      height: 700.4,
      //color: Colors.red,
      width: double.infinity,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 0.7,
              crossAxisSpacing: 10,),
          itemCount: product.length,
          padding: EdgeInsets.only(left:8.0, right: 8.0, bottom: 165.0),
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: (){
                //DetailScreen({@required this.product, @required this.index,});

                //Navigator.of(context).pushNamed('/DetailScreen', arguments: {'product': product, 'index':index});
                navigateToArticleDetailPage(context, product[index], index);
              },
              child: Hero(
                tag: index.toString(),
                child: ProductGridItem(
                  context: context,
                  product: product,
                  pos: index
                ),
              ),
            );
          }),
    );

}

void navigateToArticleDetailPage(BuildContext context, Product product, int index) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return DetailScreen(
      product: product,
      index: index
    );
  }));
}

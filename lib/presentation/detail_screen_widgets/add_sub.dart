import 'package:drohealth/constants/colors.dart';
import 'package:drohealth/constants/currency.dart';
import 'package:drohealth/constants/pack_number_action.dart';
import 'package:drohealth/data/models/Product.dart';
import 'package:drohealth/logic/blocs/increment_packs_bloc/pack_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddSub extends StatelessWidget {
  AddSub({@required this.product});
  Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 50.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: grey.withOpacity(0.3),
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      context.read<PackBloc>().add(PackNumberAction.Remove);
                    },
                    child: Icon(Icons.remove),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  BlocBuilder<PackBloc, int>(
                    builder: (context, state) {
                      return Text(
                        state.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      context.read<PackBloc>().add(PackNumberAction.Add);
                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Pack(s)',
              style: TextStyle(
                fontSize: 16,
                color: grey,
              ),
            ),
          ],
        ),
        Text(
          'N${product.price}',
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}

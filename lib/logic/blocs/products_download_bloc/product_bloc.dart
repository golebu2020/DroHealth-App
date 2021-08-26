import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:drohealth/data/models/Product.dart';
import 'package:drohealth/data/repositories/product_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
 ProductRepository repository;
 ProductBloc({@required this.repository}) : super(ProductInitialState());

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    if(event is FetchProductEvent){
      yield ProductLoadingState();
      try{
       List<Product> product = await repository.getProductInfo();
        yield ProductLoadedState(product: product);
      }
      catch(e){
        yield ProductErrorState(message: e.toString());
      }
    }

  }
}

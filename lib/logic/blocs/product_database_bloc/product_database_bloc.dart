import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_database_event.dart';
part 'product_database_state.dart';

class ProductDatabaseBloc extends Bloc<ProductDatabaseEvent, ProductDatabaseState> {
  ProductDatabaseBloc() : super(ProductDatabaseInitial());

  @override
  Stream<ProductDatabaseState> mapEventToState(
    ProductDatabaseEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

part of 'product_database_bloc.dart';

abstract class ProductDatabaseState extends Equatable {
  const ProductDatabaseState();
}

class ProductDatabaseInitial extends ProductDatabaseState {
  @override
  List<Object> get props => [];
}

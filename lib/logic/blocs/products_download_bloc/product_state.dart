part of 'product_bloc.dart';

@immutable
abstract class ProductState extends Equatable{}

class ProductInitialState extends ProductState {
  @override
  List<Object> get props => null;
}

class ProductLoadingState extends ProductState{
  @override
  List<Object> get props => null;
}

class ProductLoadedState extends ProductState{
  List<Product> product;
  ProductLoadedState ({@required this.product});
  @override
  List<Object> get props => null;
}

class ProductErrorState extends ProductState{
  String message;
  ProductErrorState({@required this.message});
  @override
  List<Object> get props => null;

}

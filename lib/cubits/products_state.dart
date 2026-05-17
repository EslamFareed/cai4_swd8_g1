part of 'products_cubit.dart';

// Data Type -> State Type
@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class ProductsLoadingState extends ProductsState {}

final class ProductsSuccessState extends ProductsState {
  final List<Product> products;

  ProductsSuccessState(this.products);
}

final class ProductsErrorState extends ProductsState {
  final String messageError;

  ProductsErrorState(this.messageError);
}

import 'package:bloc/bloc.dart';
import 'package:cai4_swd8_g1/models/product_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  // initial value for state
  ProductsCubit() : super(ProductsInitial());

  void getProducts() async {
    emit(ProductsLoadingState());

    try {
      await Future.delayed(Duration(seconds: 2));
      emit(ProductsSuccessState(products));
    } catch (e) {
      emit(ProductsErrorState("Network Error, Please try again"));
    }
  }
}

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ProductsCubit, ProductsState>(
        builder: (context, state) {        
          if (state is ProductsLoadingState) {
            return CircularProgressIndicator();
          }

          if (state is ProductsSuccessState) {
            state.products;
            return ListView();
          }

          if (state is ProductsErrorState) {
            return Text(state.messageError);
          }
          return Text("");
        },
        listener: (context, state) {},
      ),
    );
  }
}

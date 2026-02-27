import 'package:cai4_swd8_g1/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key});
  // ProductDetailsScreen({super.key,required this.item});

  // final Product item = Product(
  //   categpry: "categpry",
  //   image: "image",
  //   name: "name",
  //   price: 10,
  // );

  @override
  Widget build(BuildContext context) {
    final item = (ModalRoute.of(context)!.settings.arguments) as Product;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: Text(item.name),
      ),
      body: Column(
        children: [
          Image.network(item.image),
          Text(item.categpry),
          Text(item.price.toString()),
        ],
      ),
    );
  }
}

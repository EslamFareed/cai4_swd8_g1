import 'package:cai4_swd8_g1/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderTestScreen2 extends StatelessWidget {
  const ProviderTestScreen2({super.key});

  // int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("build Rebuild");
    // var products = Provider.of<ProductsProvider>(
    //   context,
    //   listen: false,
    // ).favProducts;
    return Scaffold(
      appBar: AppBar(title: Text("fav Products")),

      body: Consumer<ProductsProvider>(
        builder: (context, value, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(
                  value.favProducts[index].image,
                  width: 60,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  "${value.favProducts[index].name} : ${value.favProducts[index].price}",
                ),
                subtitle: Text(value.favProducts[index].categpry),
                trailing: IconButton(
                  onPressed: () {
                    value.removeFromFav(value.favProducts[index]);
                  },
                  icon: Icon(Icons.remove),
                ),
              );
            },
            itemCount: value.favProducts.length,
          );
        },
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Consumer<CounterProvider>(
      //         // Function rebuild once notify listeneres called
      //         builder: (context, value, child) {
      //           print("Consumer Rebuild");
      //           return Text(
      //             "${value.counter}",
      //             style: Theme.of(context).textTheme.titleLarge,
      //           );
      //         },
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           Provider.of<CounterProvider>(context, listen: false).increase();
      //           // setState(() {
      //           //   counter++;
      //           // });
      //         },
      //         child: Text("+"),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

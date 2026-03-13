import 'package:cai4_swd8_g1/providers/counter_provider.dart';
import 'package:cai4_swd8_g1/providers/products_provider.dart';
import 'package:cai4_swd8_g1/screens/provider_test_screen2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderTestScreen extends StatelessWidget {
  const ProviderTestScreen({super.key});

  // int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("build Rebuild");
    var products = Provider.of<ProductsProvider>(
      context,
      listen: false,
    ).products;

    // var counter = Provider.of<CounterProvider>(context, listen: false).counter;
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChangeNotifierProvider(
                    create: (context) => CounterProvider(),
                    child: ProviderTestScreen2(),
                  ),
                ),
              );
            },
            icon: Icon(Icons.favorite),
          ),
        ],
      ),

      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              products[index].image,
              width: 60,
              height: 40,
              fit: BoxFit.cover,
            ),
            title: Text("${products[index].name} : ${products[index].price}"),
            subtitle: Text(products[index].categpry),
            trailing: IconButton(
              onPressed: () {
                Provider.of<ProductsProvider>(
                  context,
                  listen: false,
                ).addToFav(products[index]);
              },
              icon: Icon(Icons.add),
            ),
          );
        },
        itemCount: products.length,
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

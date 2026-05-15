import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  //? Firestore
  //! Get Real Time Data
  //! Create
  //! Edit/Update
  //! Delete

  final db = FirebaseFirestore.instance;

  @override
  void initState() {
    getProducts();
    super.initState();
  }

  List<Map<String, dynamic>> products = [];

  getProducts() async {
    var stream = db.collection("products").snapshots();

    var subsc = stream.listen(
      (data) {
        products.clear();
        for (var doc in data.docs) {
          products.add(doc.data());
        }

        setState(() {});
      },

      onDone: () {},

      onError: (e) {},
    );

    // final querySnapShot = await db.collection("products").get();
    // for (var doc in querySnapShot.docs) {
    //   products.add(doc.data());
    //   print(doc.id);
    // }
  }

  createProduct() {
    // Auto Gen ID
    db.collection("products").add({
      "name": "Screen",
      "price": 1000.0,
      "image": "",
    });

    // Custom ID
    db.collection("products").doc("1").set({
      "name": "Screen",
      "price": 1000.0,
      "image": "",
    });
  }

  editProduct() {
    db.collection("products").doc("1").set({
      "name": "Screen",
      "price": 1000.0,
      "image": "",
    });

    db.collection("products").doc("1").update({"price": 1000.0});
  }

  deleteProduct() {
    db.collection("procuts").doc("1").delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: products.isEmpty
          ? Center(child: Text("No Items"))
          : ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(products[index]["name"]),
                    subtitle: Text(products[index]["price"].toString()),
                    leading: Image.network(
                      products[index]["image"],
                      width: 60,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              itemCount: products.length,
            ),
    );
  }
}

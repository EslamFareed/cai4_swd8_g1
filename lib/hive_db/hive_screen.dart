import 'package:cai4_swd8_g1/hive_db/user_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveScreen extends StatefulWidget {
  const HiveScreen({super.key});

  @override
  State<HiveScreen> createState() => _HiveScreenState();
}

class _HiveScreenState extends State<HiveScreen> {
  // final box = Hive.box<UserModel>("usersBox");

  // void addUser() async {
  //   await box.add(UserModel(age: 20, name: "Ahmed"));
  // }

  // void getAllUsers() {
  //   final users = box.values.toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

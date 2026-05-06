import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailCon = TextEditingController();
  final passCon = TextEditingController();

  final auth = FirebaseAuth.instance;

  @override
  void initState() {
    checkLogin();
    super.initState();
  }

  void checkLogin() {
    print("Check Login");
    print("${auth.currentUser?.email}");
    print("${auth.currentUser?.uid}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(height: 20),
            TextField(
              controller: emailCon,
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(height: 12),

            TextField(
              controller: passCon,
              decoration: InputDecoration(labelText: "Password"),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () async {
                try {
                  final userData = await auth.createUserWithEmailAndPassword(
                    email: emailCon.text,
                    password: passCon.text,
                  );
                } catch (e) {
                  log(e.toString());
                }
              },
              child: Text("Create Account"),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  final userData = await auth.signInWithEmailAndPassword(
                    email: emailCon.text,
                    password: passCon.text,
                  );
                } catch (e) {
                  log(e.toString());
                }
              },
              child: Text("Signin"),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  await auth.signOut();
                } catch (e) {
                  log(e.toString());
                }
              },
              child: Text("logout"),
            ),
          ],
        ),
      ),
    );
  }
}

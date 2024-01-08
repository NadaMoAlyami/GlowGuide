// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:glowguide/pages/home.dart';
import 'package:glowguide/pages/login.dart';
import 'package:glowguide/pages/signup.dart';
import 'package:glowguide/pages/welcome.dart';
import 'package:glowguide/pages/products.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcome(),
        "/login": (context) => const Login(),
        "/signup": (context) => const Signup(),
        "/home": (context) => HomeScreen(),
        // "/products": (context) => const products(),
      },
    );
  }
}

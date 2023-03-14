import 'dart:io';

import 'package:dart_ipify/dart_ipify.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:voter_form/Admin/AdminMobileView.dart';

import 'Admin/AdminWebPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyAK9SnsF--lSxSbfZMYKXjsqCwEhYsahKE",
    authDomain: "vote-74ea2.firebaseapp.com",
    projectId: "vote-74ea2",
    storageBucket: "vote-74ea2.appspot.com",
    messagingSenderId: "404790869830",
    appId: "1:404790869830:web:e575c57fe3e6e3a20d6f47",
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size.width;
    if (device > 600) {
      return AdminWebDesign();
    } else {
      return AdminMobileDesign();
    }
  }
}

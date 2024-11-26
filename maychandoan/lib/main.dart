import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "", // Replace with your actual API 
          appId: "", // Replace with your actual app ID
          messagingSenderId: "",// Replace with your actual ID
          projectId: ""));
  FirebaseDatabase.instance.databaseURL =
      ''; // Replace with your actual URL
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LoginPage(),
    );
  }
}

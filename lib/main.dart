import 'package:email_password_login/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:webengage_flutter/webengage_flutter.dart';

Future<void> main() async {
  //WebEngagePlugin _webEngagePlugin = new WebEngagePlugin();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: "AIzaSyBgbTJYiRXMP3k_TXLqScSYwQnILoo7dmQ",
      appId: "1:976603059935:web:d42b0afcf2c6a230d13b6a",
      messagingSenderId: "976603059935",
      projectId: "busregistrationauth",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email and Password Login',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const LoginScreen(),
    );
  }
}

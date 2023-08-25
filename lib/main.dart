import 'package:flutter/material.dart';
import 'package:flutterform/beranda.dart';
import 'package:flutterform/home.dart';
import 'package:flutterform/login.dart';
import 'package:flutterform/profile.dart';
import 'package:flutterform/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Ujian',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/beranda',
      routes: {
        '/beranda': (context) => MyHomePage(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}

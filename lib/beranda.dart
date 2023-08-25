import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 75, left: 24, right: 24),
        child: Center(
          child: Column(
            children: [
              Positioned(
                top: 25,
                child: Image.asset(
                  'assets/images/ujian.png',
                  width: 300,
                  height: 300,
                ),
              ),
              Text(
                'Masuk Sebagai Peserta',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('Masuk'),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(horizontal: 100, vertical: 18.0),
                    ),
                    side: MaterialStateProperty.all<BorderSide>(
                      BorderSide(width: 0.5),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

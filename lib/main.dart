import 'package:flutter/material.dart';
import 'package:fluttersample/Fuction2/ScreenB.dart';
import 'package:fluttersample/Fuction3/ScreenC.dart';
import 'package:fluttersample/Function1/ScreenA.dart';

void main() {
  runApp(const FlutterSample());
}

class FlutterSample extends StatelessWidget {
  const FlutterSample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/SecondPage': (context) => ScreenB(),
        '/ThirdPage': (context) => ScreenC(),
      },
    );
  }
}

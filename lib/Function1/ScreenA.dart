import 'package:flutter/material.dart';

class ScreenA extends StatefulWidget{
  const ScreenA({super.key});

  @override
  ScreenAState createState() => ScreenAState();
}

class ScreenAState extends State<ScreenA>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenA'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => {
              Navigator.pop(context),
              Navigator.of(context).pushNamed("/SecondPage"),
            },
            child: const Text('Firstpage')
        ),
      )
    );
  }
}
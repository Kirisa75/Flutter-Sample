import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenC extends StatefulWidget{
  const ScreenC({super.key});

  @override
  ScreenCState createState() => ScreenCState();
}

class ScreenCState extends State<ScreenC>{
  final List<String> entries = <String>['A','B','C'];
  final List<int> colorCodes = <int>[600,500,400];

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView builder"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text('Entry ${entries[index]}'),),
          );
        },
      ),
    );
  }
}
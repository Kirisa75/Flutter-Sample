import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenB extends StatefulWidget {
  const ScreenB({super.key});

  @override
  ScreenBState createState() => ScreenBState();
}

class ScreenBState extends State<ScreenB>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[400],
            child: const Center(child: Text("Entry C")),
          ),
          Container(
            height: 50,
            color: Colors.amber[300],
            child: Center(
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.pop(context),
                  Navigator.of(context).pushNamed("/ThirdPage"),
                },
                child: const Text("SecondPage"),
            ),
            ),
          )
        ],
      ),
    );
  }
}
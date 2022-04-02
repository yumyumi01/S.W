import 'package:flutter/material.dart';
import 'package:flutter_application_001/abcde.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'hello im yumyumi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }
 void _decrementCounter() {
    setState(() {
      
      _counter--;
    });
  }
   void _reset() {
    setState(() {
      _counter=0;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        title: Text("yumyumi"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(onPressed: (() {
            Navigator.push(
          context, MaterialPageRoute(builder: (context) => screen()));
          }),
                child: Container(child: Text("screen")),
                color: Color.fromARGB(255, 253, 146, 182),
                ),
          Text("$_counter",style: TextStyle(fontSize: 80,color: Color.fromARGB(255, 255, 124, 168)),),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(onPressed: _incrementCounter,
                child: Container(child: Icon(Icons.add)),
                color: Color.fromARGB(255, 253, 146, 182),
                ),
                 RaisedButton(onPressed: _reset,
                child: Container(child: Text("reset",style: TextStyle(fontSize: 20),)),
                color: Color.fromARGB(255, 255, 162, 193),
                ),
                RaisedButton(onPressed: _decrementCounter,
                child: Container(child: Icon(Icons.remove)),
                color: Color.fromARGB(255, 255, 194, 208),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Stack(children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.deepPurple.shade600,
              ),
              Positioned(
                left: 20,
                top: 20,
                right: 20,
                bottom: 20,
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.deepPurple.shade200,
                ),
              ),
            ]),

            Container(height: 50,),

            Stack(children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.blueAccent,
              ),
              Positioned(
                left: 20,
                top: 20,
                bottom: 20,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.blueAccent.shade100,
                ),
              )
            ],),

            Container(height: 50,),

            Container(
              height: 200,
              width: 200,
              color: Colors.grey.shade100,
              child: Stack(children: [
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.greenAccent,
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.greenAccent.shade100,
                  ),
                )
              ],),
            ),
          ],
        ));
  }
}

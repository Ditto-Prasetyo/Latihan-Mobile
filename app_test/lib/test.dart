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
      title: 'Mobile Programming Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '~ Tugas 1 - Mobile Programming ~'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title)),
      ),
      body: const Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text("Hello World !!",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold)),
            Text(""),
            Text("Nandito Permata Nur Prasetyo",
                style: TextStyle(fontSize: 16, color: Colors.deepOrange)),
            Text(
              "220605110111",
              style: TextStyle(fontSize: 16, color: Colors.deepOrange),
            )
          ])),
    );
  }
}

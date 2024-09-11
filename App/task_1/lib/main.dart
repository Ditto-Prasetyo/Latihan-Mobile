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
      title: 'Mobile Programming Practicum',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home:
          const MyHomePage(title: '~ Tugas 2 - Mobile Programming Practicum ~'),
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
            title: Center(
                child: Text(widget.title,
                    style: const TextStyle(fontSize: 30, color: Colors.red)))),
        body: const Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 80.0),
                  child: Text(
                    "HELLO WORLD!!",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.orange,
                        decorationThickness: 2.0),
                  )),
              Text("Nandito Permata Nur Prasetyo",
                  style: TextStyle(fontSize: 28, color: Colors.deepOrange)),
              Text(
                "220605110111",
                style: TextStyle(fontSize: 28, color: Colors.deepOrange),
              ),
              Text(
                "Jl. Bendungan Sengguruh, Sigura-gura, Malang, Jawa Timur",
                style: TextStyle(fontSize: 28, color: Colors.deepOrange),
              ),
              Text(
                "081292379929",
                style: TextStyle(fontSize: 28, color: Colors.deepOrange),
              ),
            ])));
  }
}

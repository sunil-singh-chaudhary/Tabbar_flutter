import 'package:flutter/material.dart';
import 'Customtabs.dart';
import 'simpletab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/simple': (BuildContext context) => simpletab(),
        '/custom': (BuildContext context) => Customtabs(),
      },
      title: "Tab bar examples",
      theme: ThemeData(primarySwatch: Colors.red),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab bar example"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.pinkAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Container(
                    height: 90,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: Center(child: Text("Simple tab example")),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/simple');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Container(
                    height: 90,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: const Center(child: Text("Custom tab example")),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/custom');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

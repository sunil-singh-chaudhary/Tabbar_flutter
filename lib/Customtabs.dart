import 'package:flutter/material.dart';

class Customtabs extends StatelessWidget {
  const Customtabs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tab bar examples",
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text("Custom Tab bar")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amberAccent,
                ),
                child: TabBar(
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.blue,
                    tabs: const [
                      Tab(text: 'First Tab'),
                      Tab(text: 'second Tab'),
                    ]),
              ),
              Expanded(
                child: TabBarView(children: [
                  Container(
                      color: Colors.pink,
                      child: Center(child: Text('Firstone '))),
                  Container(
                      color: Colors.tealAccent,
                      child: Center(child: Text('Second one ')))
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

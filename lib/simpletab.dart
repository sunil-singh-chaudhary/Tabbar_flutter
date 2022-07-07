import 'package:flutter/material.dart';

class simpletab extends StatelessWidget {
  const simpletab({super.key});

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
          title: Center(child: const Text("Simple Tab bar")),
          bottom: const TabBar(tabs: [
            Tab(text: 'First'),
            Tab(text: 'second'),
          ]),
        ),
        body: TabBarView(children: [
          Container(color: Colors.amber, child: Center(child: Text("Tab 1"))),
          Container(
              color: Colors.blue[600], child: Center(child: Text("Tab 2")))
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:linear_progress_indicator/Linear_Indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Linear Indicator',
      theme: ThemeData(),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linear Indicator'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent[200],
      ),
      body: Center(
        child: InkWell(
          child: Container(
            height: 80,
            width: 182,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(31),
              color: Colors.deepOrangeAccent[200],
            ),
            child: Center(child: Text('Go To Indicator')),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LinearIndicator()),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LinearIndicator extends StatelessWidget {
  const LinearIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linear Progress Indicator'),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LinearProgressIndicator(
              value: 0.8,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 25),
            LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

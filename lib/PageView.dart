import 'package:flutter/material.dart';

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: PageView(children: [
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_5/maps/scren.dart';
import 'package:provider/provider.dart';

class Maps extends StatelessWidget {
  const Maps({super.key});

  @override
  Widget build(BuildContext context) {
    final provid = Provider.of<Home_scren>(context, listen: false);
    print('provider');
    return Scaffold(
      appBar: AppBar(
        title: Text('الاستاذ الملك بلال حجار'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Home_scren>(
              builder: (context, value, child) {
                return Text('${value.conrs}');
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provid.add();
        },
        child: Icon(Icons.add_alert_sharp),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_5/Date_and_Picker.dart';
import 'package:flutter_application_5/Image_Picker.dart';
import 'package:flutter_application_5/PageView.dart';
import 'package:flutter_application_5/Slider_Slider.dart';
import 'package:flutter_application_5/Splash_Screen.dart';
import 'package:flutter_application_5/maps/maps.dart';
import 'package:flutter_application_5/maps/scren.dart';
import 'package:flutter_application_5/task.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return Home_scren();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Maps(),
        //  Task(),
        //  SplashScreen(),
          GalleryAccess(),
        // DateTimePicker(),
        // SliderDemo(),
        //PageViewDemo(),
        //   Maps(),
      ),
    );
  }
}

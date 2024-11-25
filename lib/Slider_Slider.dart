import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _currentSliderValue = 20;
  RangeValues _currentRangeValues = const RangeValues(20, 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliders')),
      body: Column(
        children: <Widget>[
          Slider(
            value: _currentSliderValue,
            min: 0,
            max: 100,
            divisions: 5,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
          RangeSlider(
            values: _currentRangeValues,
            min: 0,
            max: 100,
            divisions: 5,
            labels: RangeLabels(_currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString()),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
        ],
      ),
    );
  }
}

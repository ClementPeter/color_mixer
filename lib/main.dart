import 'package:flutter/material.dart';
import 'package:colormixer_ste_mgmt/color_mixer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('Color Mixer')),
        body: Column(          
          children: const <Widget>[
            SizedBox(height: 20.0),
            ColorMixer(),
          ],
        ),    
      ),
    );
  }
}

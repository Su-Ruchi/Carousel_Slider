import 'package:flutter/material.dart';
import 'package:mona_lisa/homepage/main_page.dart';
import 'package:mona_lisa/homepage/sculpture.dart';
import 'package:mona_lisa/hopeless.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

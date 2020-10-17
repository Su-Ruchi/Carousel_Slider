import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Hopeless extends StatefulWidget {
  @override
  _HopelessState createState() => _HopelessState();
}

class _HopelessState extends State<Hopeless> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400,
          ),
          items:
            list.map((i) {
              return Builder(builder: (BuildContext context){
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: i,
                  ),
                );
              });
            }).toList(),

        ),
      ),
    );
  }
}
final List list =[
  Colors.red,
  Colors.black,
  Colors.red,
];
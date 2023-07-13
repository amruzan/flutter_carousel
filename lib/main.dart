import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>
    runApp(MyApp());

class MyApp extends StatelessWidget{
  List items = [1,2,3,4];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text("Carousel Slider"),),
    body: Container(child: 
      Column(children: [
        Text("Carousel Slider Sample"),
        SizedBox(height: 15,),
        CarouselSlider(items: items.map((e){
          return Builder(builder: (BuildContext context){
            return Container(width: 100,height: 100,
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              child: Text("Text $e"),);
          });
        }).toList(), options: CarouselOptions(enlargeCenterPage: true,autoPlay: true,))
      ],),),),);
  }
}
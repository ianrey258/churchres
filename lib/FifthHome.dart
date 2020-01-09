import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class FifthHome extends StatefulWidget {
  ImageCarouselState createState() => ImageCarouselState();
}

class ImageCarouselState extends State<FifthHome>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    Widget carousel = new Carousel(
      boxFit: BoxFit.cover,
      images: [
        new AssetImage('assets/images/bap.jpg'),
        new AssetImage('assets/images/cross.jpeg'),
        new AssetImage('assets/images/back.jpg'),
        new AssetImage('assets/images/background.jpg'),
        new AssetImage('assets/images/bap.jpg'),
        new AssetImage('assets/images/cross.jpeg'),
        new AssetImage('assets/images/back.jpg'),
        new AssetImage('assets/images/background.jpg'),
        new AssetImage('assets/images/bap.jpg'),
        new AssetImage('assets/images/cross.jpeg'),
        new AssetImage('assets/images/back.jpg'),
        new AssetImage('assets/images/background.jpg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 1),
    );

    Widget banner = new Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: new Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0)),
          color: Colors.amber.withOpacity(0.5),
        ),
        padding: const EdgeInsets.all(10.0),
        child: new Text(
          'Church Groups',
          style: TextStyle(
            fontFamily: 'fira',
            fontSize: animation.value, //18.0,
            //color: Colors.white,
          ),
        ),
      ),
      // ),
      //  ),
    );

    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Center(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          height: screenHeight / 2,
          child: new ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: new Stack(
              children: [
                carousel,
                banner,
              ],
            ),
          ),
        ),
      ),
    );
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}

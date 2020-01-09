import 'package:flutter/material.dart';

class SeventhHome extends StatelessWidget {
//  Seven createState() => new Seven();
//}

//class Seven extends State<SeventhHome> {

    final tealOpacity = Container(
    color: Color(0xBB00D699),
  );

@override
  Widget build (BuildContext context) {
    return Scaffold(     
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          background,
          tealOpacity,
          new SafeArea(
            child: new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  logo,
                  SizedBox(height: 30.0),
                  description,
                  SizedBox(height: 120.0),
                  button('Love GOD', () {}),
                  SizedBox(height: 8.0),
                  button('Live LIFE', () { }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const TextStyle textStyle = TextStyle(
  color: Colors.white,
);

  final background = Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/background.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  );

  final logo = Image.asset(
    'assets/images/cross.jpeg',
    width: 180.0,
    height: 180.0,
  );

  Widget button(String label, Function onTap) {
    return Material(
      color: Color(0xBB00D699),
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13.0),
        child: Center(
          child: Text(
            label,
            style:
                textStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  final description = Text(
    'An application for any Church related transactions.',
    textAlign: TextAlign.center,
    style: textStyle.copyWith(fontSize: 24.0),
  );


  
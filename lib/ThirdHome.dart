import 'package:flutter/material.dart';

class ThirdHome extends StatelessWidget {
  /*Second createState() => new Second();
}
class Second extends State<SecondHome>{*/
  Widget _text(String text){
    return Text(text,style: TextStyle(fontSize: 60,color: Colors.white),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Church Events'),
          backgroundColor: Color.fromRGBO(216, 128, 253, 0.6),
        ),
        body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/back.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.linearToSrgbGamma(),
                )
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height*.20,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/background1.jpg'),fit: BoxFit.fill)),
                            child: FlatButton(
                              onPressed: () {Navigator.pushNamed(context, '/wed');},
                              child: _text('Wedding'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height*.20,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bap.jpg'),fit: BoxFit.fill)),
                            child: FlatButton(
                              onPressed: () {Navigator.pushNamed(context, '/bap');},
                              child: _text('Baptism'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height*.20,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/background.jpg'),fit: BoxFit.fill)),
                            child: FlatButton(
                              onPressed: () {Navigator.pushNamed(context, '/confirm');},
                              child: _text('Confirmation'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height*.20,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/back.jpg'),fit: BoxFit.fill)),
                            child: FlatButton(
                              onPressed: () {Navigator.pushNamed(context, '/bless');},
                              child: _text('Blessing'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            )));
  }
}
              
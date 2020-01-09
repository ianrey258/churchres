import 'package:flutter/material.dart';


void main() {
  runApp(Main());
}
class Main extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => HomePage(),
      '/eight': (context) => EightHome(),},
  );
}
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CHURCH 2 GO'),
        backgroundColor: Colors.yellowAccent[900],
      ),
      body: new Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second' );
          },
          child: Text('',  
              style: new TextStyle(
              fontSize: 22.00,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
class EightHome extends StatefulWidget{
  Eight createState() => new Eight();
}
class Eight extends State<EightHome>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fill Up Form'),
        backgroundColor: Colors.pink[900],
      ),
      body: new Center(
        child: RaisedButton(
          onPressed: () {
          },
          child: Text('reg',
              style: new TextStyle(
              fontSize: 22.00,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

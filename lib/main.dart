import 'package:flutter/material.dart';
import 'Baptism.dart';
import 'Confirmation.dart';
import 'SecondHome.dart';
import 'ThirdHome.dart';
import 'FourthHome.dart';
import 'FifthHome.dart';
import 'SixthHome.dart';
import 'SeventhHome.dart';
import 'Wedding.dart';
import 'Matthew.dart';
import 'Blessings.dart';
import 'Mark.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Church 2 Go',
      theme: ThemeData(primarySwatch: Colors.teal),
      routes: <String, WidgetBuilder>{
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondHome(),
        '/third': (context) => ThirdHome(),
        '/fourth': (context) => FourthHome(),
        '/fifth': (context) => FifthHome(),
        '/sixth': (context) => SixthHome(),
        '/seventh': (context) => SeventhHome(),
        '/confirm': (context) => Confirmation(),
        '/wed': (context) => Wedding(),
        '/bap': (context) => Baptism(),
        '/bless': (context) => Blessings(),
        '/matthew': (context) => Matthew(),
        '/mark': (context) => Mark(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  HS createState() => new HS();
}

class HS extends State<HomeScreen>{
  TextEditingController inputcontroller1 = TextEditingController();
  TextEditingController inputcontroller2 = TextEditingController();
  final formKey = new GlobalKey<FormState>();
  ScrollController _sc;

  validateLogin(){
    if(formKey.currentState.validate()){
      formKey.currentState.save();
      Navigator.popAndPushNamed(context, '/second');
    }
  }
  
  validateRegister(){
    if(formKey.currentState.validate()){
      formKey.currentState.save();
      Navigator.popAndPushNamed(context, '/second');
    }
  }

  @override
  Widget build(BuildContext context) {
  final screen = MediaQuery.of(context);
      return Scaffold(
          body: Container(
            width: screen.size.width,
            height: screen.size.height,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.fill)
            ),
            child: SingleChildScrollView(
              controller: _sc,
              child: Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(50.0),
                      child: Material(
                        elevation: 5.0,
                        child: Container(
                          width: screen.size.width*.40,
                          height: screen.size.height*.20,
                          decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/cross.jpeg'),fit: BoxFit.cover))
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20,15,20,10),
                      color: Color.fromRGBO(223, 223, 223, .7),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: inputcontroller1,
                        decoration: InputDecoration(labelText: 'Firstame'),
                        validator: (val) => val.length == 0 ? 'Enter FirstName' : null,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20,10,20,10),
                      color: Color.fromRGBO(223, 223, 223, .7),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: inputcontroller2,
                        decoration: InputDecoration(labelText: 'LastName'),
                        validator: (val) => val.length == 0 ? 'Enter LastName' : null,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: RaisedButton(
                              onPressed: validateLogin,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(150.0)
                                ),
                              color: Color.fromRGBO(57, 253, 36, 0.6),
                              textColor: Colors.white,
                              child: Text('Login',
                                style: TextStyle(fontSize: 26.0),
                              )
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: RaisedButton(
                              onPressed: validateRegister,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(150.0)
                                ),
                              color: Color.fromRGBO(216, 128, 253, 0.6),
                              textColor: Colors.white,
                              child: Text('Register',
                                style: TextStyle(fontSize: 26.0),
                              )
                            ),
                          ),
                        ),
                      ],
                    )
                  ]
                ),
              ),
            ),
          )
        );
  }
}    


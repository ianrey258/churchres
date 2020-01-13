import 'package:church2go/PreferencesUtil/PrefUtil.dart';
import 'package:church2go/Registration.dart';
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
import 'package:church2go/RequestUtil/RequestUtil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Main());
}

class Main extends StatelessWidget {
  PrefUtil _prefUtil =PrefUtil();
  String home;

  Main(){
    init();
  }
  init()async{
    home = await _prefUtil.getId() != null?home = '/second':'/';
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Church 2 Go',
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: home,
      routes: <String, WidgetBuilder>{
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondHome(),
        '/third': (context) => ThirdHome(),
        '/fourth': (context) => FourthHome(),
        '/fifth': (context) => FifthHome(),
        '/sixth': (context) => SixthHome(),
        '/seventh': (context) => SeventhHome(),
        '/confirm': (context) => ConfirmationNav(),
        '/wed': (context) => WeddingSc(),
        '/bap': (context) => Baptism(),
        '/bless': (context) => Blessings(),
        '/matthew': (context) => Matthew(),
        '/mark': (context) => Mark(),
        '/registration': (context) => Registration(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  HS createState() => new HS();
}

class HS extends State<HomeScreen>{
  RequestUtl _requestUtl = new RequestUtl();
  TextEditingController inputcontroller1 = TextEditingController();
  TextEditingController inputcontroller2 = TextEditingController();
  final formKey = new GlobalKey<FormState>();
  List<String> validateMsg = ['Username and Password Not Match','Please Check your Internet Connection'];
  ScrollController _sc;

  validateLogin() async {
    if(formKey.currentState.validate()){
      formKey.currentState.save();
      String result = await _requestUtl.login(inputcontroller1.text, inputcontroller2.text,context);
      if(result == 'null'){
        showResultDialog(validateMsg[0]);
      } else if(result == 'No Connection'){
        showResultDialog(validateMsg[1]);
      } else {
        Navigator.popAndPushNamed(context, '/second');
      }
    }
  }
  Future<bool> showResultDialog(String msg){
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          elevation: 5.0,
          content: Container(
            height: MediaQuery.of(context).size.height*.10,
            child: Center(child: Text(msg,style: TextStyle(fontSize: 20),textAlign: TextAlign.center,))
            ),
          actions: <Widget>[
            FlatButton(
              child: Container(child: Text('Ok'),),
              onPressed: msg.endsWith(msg[0]) ? regFailed : regSuccess,
            ),
          ],
        );
      }
    );
  }

  regFailed(){
    Navigator.pop(context);
  }
  regSuccess(){
    Navigator.pop(context);
    Navigator.pop(context);
    clearTxt();
  }
  clearTxt(){
    setState(() {
      inputcontroller1.text='';inputcontroller2.text='';
    });
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
                        decoration: InputDecoration(labelText: 'Username'),
                        validator: (val) => val.length == 0 ? 'Invalid Username' : null,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20,10,20,10),
                      color: Color.fromRGBO(223, 223, 223, .7),
                      child: TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        controller: inputcontroller2,
                        decoration: InputDecoration(labelText: 'Password'),
                        validator: (val) => val.length == 0 ? 'Invalid Password' : null,
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
                              onPressed: ()=>Navigator.pushNamed(context, '/registration'),
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


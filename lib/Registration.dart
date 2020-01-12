import 'package:church2go/Model/account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:church2go/RequestUtil/RequestUtil.dart';

class Registration extends StatefulWidget{
  Reg createState() => Reg();
}

class Reg extends State<Registration>{

  RequestUtl _requestUtl = RequestUtl();
  GlobalKey<FormState> formkey;
  List<TextEditingController> textEditor = [];
  ScrollController _sc;
  List<String> msg = ['You Are Now Registered','Please Check your Internet Connection'];

  
  @override 
  initState(){
    super.initState();
    formkey = new GlobalKey<FormState>();
    setState(() {
      for(int i=1;i<10;i++){
        textEditor.add(TextEditingController());
      }
    });
  }

  void validation() async {
    if(formkey.currentState.validate()){
      formkey.currentState.save();
      Account acc = new Account(null, textEditor[0].text, textEditor[1].text, textEditor[2].text, textEditor[3].text, 
                                textEditor[4].text, textEditor[5].text, textEditor[6].text, textEditor[7].text);
      await _requestUtl.account(acc, context) ? showResultDialog(msg[0]):showResultDialog(msg[1]);
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
      textEditor.forEach((e)=>e.text='');
    });
  }

  Widget build(BuildContext context){
    final screen = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(title: Container(
        padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
        child: Text("Registration",textAlign: TextAlign.center,
        ),
      ),
        backgroundColor: Color.fromRGBO(216, 128, 253, 0.6),
      ),
      body: Container(
        width: screen.size.width,
        height: screen.size.height,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/background.jpg'),fit: BoxFit.fill)
        ),
        child: SingleChildScrollView(
          controller: _sc,
          child: Container(
            color: Color.fromRGBO(255, 255, 255, 0.2),
            padding: EdgeInsets.all(10),
            child: Form(
            key: formkey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: textEditor[0],
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: 'Username'),
                    validator: (val) => val.isEmpty ? 'Input Username': null,
                  ),
                  TextFormField(
                    controller: textEditor[1],
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: 'Password'),
                    validator: (val) => val.isEmpty ? 'Input Password': null,
                  ),
                  TextFormField(
                    controller: textEditor[2],
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: 'Church Your are in'),
                    validator: (val) => val.isEmpty ? 'Input Church': null,
                  ),
                  TextFormField(
                    controller: textEditor[3],
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: 'Firstname'),
                    validator: (val) => val.isEmpty ? 'Input Firstname': null,
                  ),
                  TextFormField(
                    controller: textEditor[4],
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: 'Lastname'),
                    validator: (val) => val.isEmpty ? 'Input Lastname': null,
                  ),
                  TextFormField(
                    controller: textEditor[5],
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(labelText: 'Address'),
                    validator: (val) => val.isEmpty ? 'Input Address': null,
                  ),
                  TextFormField(
                    controller: textEditor[6],
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: 'E-mail Address'),
                    validator: (val) => val.isEmpty ? 'Input E-mail Address': null,
                  ),
                  TextFormField(
                    controller: textEditor[7],
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(labelText: 'Contact No.'),
                    validator: (val) => val.length != 12 ? 'Input Contact No.': null,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                            onPressed: validation,
                            child: Text("Register",style: TextStyle(fontSize: 26.0)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(150.0)
                            ),
                            color: Color.fromRGBO(57, 253, 36, 0.6),
                            textColor: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}
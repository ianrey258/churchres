import 'package:flutter/material.dart';
import 'package:church2go/Model/confirmation.dart';
import 'package:church2go/PreferencesUtil/PrefUtil.dart';
import 'package:church2go/RequestUtil/RequestUtil.dart';

class ConfirmationNav extends StatefulWidget {
  Confirm createState() => new Confirm();
}

class Confirm extends State<ConfirmationNav> {

  String id;
  PrefUtil _prefUtil = PrefUtil();
  RequestUtl _requestUtl = RequestUtl();
  TextEditingController inputcontroller1 = TextEditingController();
  TextEditingController inputcontroller2 = TextEditingController();
  TextEditingController inputcontroller3 = TextEditingController();
  TextEditingController inputcontroller4 = TextEditingController();
  TextEditingController inputcontroller5 = TextEditingController();
  TextEditingController inputcontroller6 = TextEditingController();
  TextEditingController inputcontroller7 = TextEditingController();
  List<String> message =['Data Saved','Data Not Save \n Please Check your Internet'];
  final formKey = new GlobalKey<FormState>();
  ScrollController _sc;
  
  @override
  initState(){
    super.initState();
    initialize();
  }
  void initialize() async {
    id = await _prefUtil.getId();
  }

  validateSubmit() async{
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Confirmation confirm = Confirmation(null, id, inputcontroller1.text, inputcontroller2.text,
       inputcontroller3.text, inputcontroller4.text, inputcontroller5.text, inputcontroller6.text, inputcontroller7.text, null);
      await _requestUtl.confirmation(confirm, context)?showResultDialog(message[0]):showResultDialog(message[1]);
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
            height: MediaQuery.of(context).size.height*.04,
            child: Center(child: Text(msg,style: TextStyle(fontSize: 30),))
            ),
          actions: <Widget>[
            FlatButton(
              child: Container(child: Text('Ok'),),
              onPressed: (){Navigator.pop(context);clrtext();},
            ),
          ],
        );
      }
    );
  }
  
  void clrtext(){
    inputcontroller1.text = '';inputcontroller2.text = '';inputcontroller3.text = '';
    inputcontroller4.text = '';inputcontroller5.text = '';inputcontroller6.text = '';
    inputcontroller7.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation Registration Form',
            style: TextStyle(fontSize: 18)),
        backgroundColor: Color.fromRGBO(216, 128, 253, 0.6),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(216, 128, 253, 0.2),
        child: SingleChildScrollView(
          controller: _sc,
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: TextFormField(
                      controller: inputcontroller1,
                      decoration: InputDecoration(labelText: 'First Name'),
                      validator: (val) =>
                          val.length == 0 ? 'Enter FirstName' : null,
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      controller: inputcontroller2,
                      decoration: InputDecoration(labelText: 'Last Name'),
                      validator: (val) =>
                          val.length == 0 ? 'Enter LastName' : null,
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      controller: inputcontroller3,
                      decoration: InputDecoration(labelText: 'Age'),
                      validator: (val) =>
                          val.length == 0 ? 'Enter Age' : null,
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      controller: inputcontroller4,
                      decoration: InputDecoration(labelText: 'Address'),
                      validator: (val) =>
                          val.length == 0 ? 'Enter Address' : null,
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      controller: inputcontroller5,
                      decoration: InputDecoration(labelText: 'Gender'),
                      validator: (val) =>
                          val.length == 0 ? 'Enter Gender' : null,
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      controller: inputcontroller6,
                      decoration: InputDecoration(
                          labelText: 'First Name of Participant'),
                      validator: (val) =>
                          val.length == 0 ? 'Enter First Name of Participant' : null,
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      controller: inputcontroller7,
                      decoration: InputDecoration(
                          labelText: 'Last Name of Participant'),
                      validator: (val) =>
                          val.length == 0 ? 'Enter Last Name of Participant' : null,
                    ),
                  ),
                  Container(
                      width: 120,
                      child: RaisedButton(
                          onPressed: validateSubmit,
                          color: Colors.grey,
                          textColor: Colors.white,
                          child: Text(
                            'Submit',
                            style: TextStyle(fontSize: 16.0),
                          )))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

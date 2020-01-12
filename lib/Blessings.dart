import 'package:church2go/PreferencesUtil/PrefUtil.dart';
import 'package:church2go/RequestUtil/RequestUtil.dart';
import 'package:flutter/material.dart';
import 'package:church2go/Model/blessing.dart';
import 'package:flutter/services.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class Blessings extends StatefulWidget {
  Bless createState() => new Bless();
}

class Bless extends State<Blessings> {
  String id;
  PrefUtil _prefUtil = PrefUtil();
  RequestUtl _requestUtl = RequestUtl();
  TextEditingController inputcontroller1 = TextEditingController();
  TextEditingController inputcontroller2 = TextEditingController();
  TextEditingController inputcontroller3 = TextEditingController();
  TextEditingController inputcontroller4 = TextEditingController();
  List<String> message =['Data Saved','Data Not Save \n Please Check your Internet'];
  final formKey = new GlobalKey<FormState>();
  ScrollController _sc;

  @override
  initState(){
    super.initState();
    initialize();
    setState(() {
      inputcontroller4.text = DateTime.now().toString();
    });
  }
  void initialize() async {
    id = await _prefUtil.getId();
  }
  validateSubmit() async{
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Blessing bless = Blessing(null, id, inputcontroller1.text, inputcontroller2.text, 
                                inputcontroller3.text, inputcontroller4.text);
      await _requestUtl.blessing(bless, context)?showResultDialog(message[0]):showResultDialog(message[1]);
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
    inputcontroller4.text = '';
  }

  DateTime checkdateFormat(){
    try{
      return DateTime.parse(inputcontroller4.text);
    } catch (e){
      return DateTime.now();
    }
  }
  
  void showDTpicker() async {
    DateTime currentValue = checkdateFormat();
    final date = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      initialDate: currentValue ?? DateTime.now(),
      lastDate: DateTime(2100)
    );
    if (date != null) {
      final time = await showTimePicker(
      context: context,
      initialTime:
      TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
    );
      inputcontroller4.text = DateTimeField.combine(date, time).toString();
          } else {
            inputcontroller4.text = currentValue.toString();
          }
  }

  String validateDateTime(){
    try{
      DateTime.parse(inputcontroller4.text);
      return null;
    } catch (e){
      return 'invalid Datetime';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle/House Blessings Reg Form',
            style: TextStyle(fontSize: 14)),
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
                      decoration: InputDecoration(labelText: 'Address'),
                      validator: (val) =>
                          val.length == 0 ? 'Enter Address' : null,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: TextFormField(
                            style: TextStyle(fontSize: 14.0),
                            keyboardType: TextInputType.datetime,
                            controller: inputcontroller4,
                            decoration: InputDecoration(labelText: 'Reserve Date and Time (yyyy-MM-dd HH:mm)'),
                            validator: (val) => validateDateTime(),
                          ),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.date_range),
                          onPressed: (){showDTpicker();},
                        ),
                      ),
                    ],
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

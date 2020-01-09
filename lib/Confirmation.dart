import 'package:flutter/material.dart';

class Confirmation extends StatefulWidget {
  Confirm createState() => new Confirm();
}

class Confirm extends State<Confirmation> {
  TextEditingController inputcontroller1 = TextEditingController();
  TextEditingController inputcontroller2 = TextEditingController();
  TextEditingController inputcontroller3 = TextEditingController();
  TextEditingController inputcontroller4 = TextEditingController();
  TextEditingController inputcontroller5 = TextEditingController();
  TextEditingController inputcontroller6 = TextEditingController();
  TextEditingController inputcontroller7 = TextEditingController();
  final formKey = new GlobalKey<FormState>();
  ScrollController _sc;

  validateSubmit() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Navigator.pop(context, '/third');
    }
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

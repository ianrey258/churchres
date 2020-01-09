import 'package:flutter/material.dart';

class FourthHome extends StatefulWidget {
  Fourth createState() => new Fourth();
}

class Fourth extends State<FourthHome> {
  TextEditingController inputcontroller1 = TextEditingController();
  TextEditingController inputcontroller2 = TextEditingController();
  TextEditingController inputcontroller3 = TextEditingController();
  TextEditingController inputcontroller4 = TextEditingController();
  TextEditingController inputcontroller5 = TextEditingController();
  final formKey = new GlobalKey<FormState>();
  ScrollController _sc;

  validateDonate() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Navigator.pop(context, '/second');
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Charity Form',
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
                  Container(
                    child: TextFormField(
                      style: TextStyle(fontSize: 14.0),
                      controller: inputcontroller4,
                      decoration: InputDecoration(labelText: 'Amount'),
                      validator: (val) =>
                          val.length == 0 ? 'Enter Amount' : null,
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      style: TextStyle(fontSize: 14.0),
                      controller: inputcontroller5,
                      decoration: InputDecoration(labelText: 'Purpose'),
                      validator: (val) =>
                          val.length == 0 ? 'Enter Purpose' : null,
                    ),
                  ),
                  Container(
                      width: 120,
                      child: RaisedButton(
                          onPressed: validateDonate,
                          color: Colors.grey,
                          textColor: Colors.white,
                          child: Text(
                            'Donate',
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

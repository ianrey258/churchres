
import 'package:church2go/PreferencesUtil/PrefUtil.dart';
import 'package:flutter/material.dart';

class SecondHome extends StatefulWidget {
  Second createState() => new Second();
}
class Second extends State<SecondHome>{
  PrefUtil pref = PrefUtil();
  String firstname,lastname,church,email;

  Second(){
    initState();
  }

  @override
  void initState() {
    super.initState();
    initialize();
  }
  void initialize() async {
    String firstname1 = await pref.getFirstName();
    String lastname1 = await pref.getLastName();
    String church1 = await pref.getChurch();
    String email1 = await pref.getEmail();
    setState(() {
      firstname =firstname1;
      lastname =lastname1;
      church = church1;
      email = email1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: Color.fromRGBO(216, 128, 253, 0.6),
        ),
        body: Container(
          decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/back.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.linearToSrgbGamma(),
                )
                ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: Container(
                  color: Color.fromRGBO(216, 128, 253, 0.6),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Text('Church 2 Go',
                          style: new TextStyle(
                          fontSize: 60.00,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow[50])),
                      ),
                       Container(
                        child: Text(firstname+' '+lastname,
                          style: new TextStyle(
                          fontSize: 20.00,
                          color: Colors.yellow[50])),
                      ),
                       Container(
                        child: Text('Church : '+church,
                          style: new TextStyle(
                          fontSize: 20.00,
                          color: Colors.yellow[50])),
                      ),
                       Container(
                        child: Text('Email : '+email,
                          style: new TextStyle(
                          fontSize: 20.00,
                          color: Colors.yellow[50])),
                      ),
                    ],
                  ),
                )
              ),
              ListTile(
                leading: Icon(Icons.calendar_today, color: Colors.blue,),
                title: Text('Church Events', style: TextStyle(fontSize: 20)),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamed(context, '/third');
                },
              ),
              ListTile(
                leading: Icon(Icons.attach_money,color: Colors.green,),
                title: Text('Charity', style: TextStyle(fontSize: 20)),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamed(context, '/fourth');
                },
              ),
              ListTile(
                leading: Icon(Icons.supervised_user_circle,color: Colors.red, ),
                title: Text('Church Groups', style: TextStyle(fontSize: 20)),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamed(context, '/fifth');
                },
              ),
              ListTile(
                leading: Icon(Icons.book, color: Colors.green,),
                title: Text('Bible Verse', style: TextStyle(fontSize: 20)),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamed(context, '/sixth');
                },
              ),
              ListTile(
                leading: Icon(Icons.sentiment_satisfied, color: Colors.yellow,),
                title: Text('About US', style: TextStyle(fontSize: 20)),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamed(context, '/seventh');
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.blue,),
                title: Text('Logout', style: TextStyle(fontSize: 20)),
                onTap: () async {
                  await pref.resetPref();
                  Navigator.pop(context);
                  Navigator.popAndPushNamed(context,'/');
                },
              ),
            ],
          ),
        ));
  }
}


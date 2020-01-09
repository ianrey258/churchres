
import 'package:flutter/material.dart';

class SecondHome extends StatelessWidget {
  /*Second createState() => new Second();
}
class Second extends State<SecondHome>{*/

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
                child: Text('Church 2 Go',
                    style: new TextStyle(
                        fontSize: 40.00,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[50])),
                decoration: BoxDecoration(
                  color:Color.fromRGBO(216, 128, 253, 0.6),
                ),
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
                onTap: () {
                  Navigator.popAndPushNamed(context,'/');
                },
              ),
            ],
          ),
        ));
  }
}


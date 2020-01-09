import 'package:flutter/material.dart';

    class Matthew extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ListViews',
          theme: ThemeData(
            primarySwatch: Colors.teal,
          ),
          home: Scaffold(
            appBar: AppBar(title: Text('Matthew (Gospel According to Matthew)')),
            body: BodyLayout(),
          ),
        );
      }
    }

    class BodyLayout extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return _myListView(context);
      }
    }
    Widget _myListView(BuildContext context) {
      return ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
                        ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
                        ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
                        ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
                        ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
                        ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
                        ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.red,),
              title: Text('Matthew 5:28'),
              subtitle: Text('28 But I tell you that anyone who looks at a woman lustfully has already committed adultery with her in his heart.'),
            ),
          ],
        ).toList(),
      );
    }
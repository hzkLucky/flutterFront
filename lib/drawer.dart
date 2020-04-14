import 'package:flutter/material.dart';

void main() => runApp(MyDrawer());

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key key}) : super(key: key);
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ClipOval(
                    child: Image.asset('images/user.png',  width: 80.0),
                  ),
                ),
                Text('Wendux', style: TextStyle(fontWeight: FontWeight.bold))
              ],),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: Text('add'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Manage accounts'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
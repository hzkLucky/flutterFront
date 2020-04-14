import 'package:flutter/material.dart';
import './drawer.dart';

void main() => runApp(MySca());

class MySca extends StatefulWidget {
  @override
  _MyScaState createState() => _MyScaState();
}

class _MyScaState extends State<MySca> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter'),
          leading: Builder(builder: (context){
            return IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          },),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.share),
              onPressed: (){

              },
            )
          ],
        ),
        drawer:  MyDrawer(),
        bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.signal_cellular_4_bar),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.signal_wifi_4_bar),
            title: Text('日程')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.signal_cellular_4_bar),
            title: Text('我的')
          )
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        ),
      ),
    );
  }
}
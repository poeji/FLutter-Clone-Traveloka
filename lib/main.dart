import 'package:flutter/material.dart';
import 'package:traveloka/pages/awal.dart';
import 'package:traveloka/pages/inbox.dart';
import 'package:traveloka/pages/pesanan.dart';
import 'package:traveloka/pages/profile.dart';
import 'package:traveloka/pages/simpan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traveloka',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Traveloka'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

int _selectedIndex = 0;
final _layoutPage = [
  Awal(),
  Simpan(),
  Pesanan(),
  Inbox(),
  Profile(),
];

void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index; 
    });
}


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            title: Text('Awal')
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.save),
            title: Text('Simpan')
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.view_agenda),
            title: Text('Pesanan')
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.inbox),
            title: Text('Inbox')
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.account_circle),
            title: Text('Akun Saya')
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap:_onTabItem,
      ),
      
    );
  }
}

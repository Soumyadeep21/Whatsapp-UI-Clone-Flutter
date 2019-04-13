import 'package:flutter/material.dart';
import 'Pages/camera_screen.dart';
import 'Pages/chats_screen.dart';
import 'Pages/status_screen.dart';
import 'Pages/calls_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController controller;
  Icon fabIcon;
  @override
  void initState() {
    super.initState();
    fabIcon = Icon(Icons.chat);
    controller = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        switch (controller.index) {
          case 0:
            break;
          case 1:
            setState(() {
              fabIcon = Icon(Icons.chat);
            });
            break;
          case 2:
            setState(() {
              fabIcon = Icon(Icons.edit);
            });
            break;
          case 3:
            setState(() {
              fabIcon = Icon(Icons.add_call);
            });
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Text("WhatsApp"),
        actions: <Widget>[
          Icon(Icons.search),
          Container(
            width: 8.0,
          ),
          Icon(Icons.more_vert)
        ],
        elevation: 0.8,
        bottom: new TabBar(
          controller: controller,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          camerascreen(),
          chatsscreen(),
          statusscreen(),
          callsscreen()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("I am Pressed!"),
        backgroundColor: Color(0xff25D366),
        child: fabIcon,
      ),
    );
  }
}

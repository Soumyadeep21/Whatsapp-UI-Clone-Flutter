import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat_model.dart';
import 'dart:math' as math;

class Conversation extends StatelessWidget {
  final chat_model model;
  Conversation({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0.0,
        backgroundColor: Color(0xff075E54),
        title: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
            CircleAvatar(
              radius: 18.0,
              backgroundImage: model.imageurl != null
                  ? NetworkImage(model.imageurl)
                  : AssetImage("assets/default.jpg"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
            ),
            Text(model.name),
          ],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: Icon(Icons.call), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            Flexible(child: Container()),
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 4.0)),
                Flexible(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.insert_emoticon,
                              color: Colors.grey[700],
                            ),
                            onPressed: () {}),
                        Expanded(
                          child: TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0.0),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle: -math.pi / 3.5,
                          child: IconButton(
                              icon: Icon(
                                Icons.attach_file,
                                color: Colors.grey[700],
                              ),
                              onPressed: () {
                                print("Attachment");
                              }),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.photo_camera,
                              color: Colors.grey[700],
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 4.0)),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.keyboard_voice),
                  backgroundColor: Colors.teal,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

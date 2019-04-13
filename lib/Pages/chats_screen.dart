import 'package:flutter/material.dart';
import 'package:whatsapp/Pages/conversation.dart';
import 'package:whatsapp/model/chat_model.dart';

class chatsscreen extends StatefulWidget {
  @override
  chatsscreenState createState() {
    return new chatsscreenState();
  }
}

class chatsscreenState extends State<chatsscreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: model.length,
      itemBuilder: (context, i) => Column(
            children: <Widget>[
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => Conversation(
                            model: model[i],
                          )));
                },
                leading: Material(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: model[i].imageurl != null
                        ? Image.network(
                            model[i].imageurl,
                            fit: BoxFit.cover,
                          )
                        : Image.asset("assets/default.jpg"),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      model[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      model[i].time,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                subtitle: Text(
                  model[i].message,
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              Divider(),
            ],
          ),
    );
  }
}

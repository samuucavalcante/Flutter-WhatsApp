import 'package:flutter/material.dart';
import 'package:whatsapp/pages/call_screen.dart';
import 'package:whatsapp/pages/camera_screen.dart';
import 'package:whatsapp/pages/chat_screen.dart';
import 'package:whatsapp/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  var cameras;
  WhatsAppHome(this.cameras);
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('WhatsApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(
              text: "Chats",
            ),
            new Tab(
              text: "Status",
            ),
            new Tab(
              text: "Calls",
            ),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(widget.cameras),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => print("open chats"),
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}

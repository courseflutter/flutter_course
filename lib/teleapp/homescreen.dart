import 'package:flutter/material.dart';
import 'package:flutter_application_4/teleapp/calls_screen.dart';
import 'package:flutter_application_4/teleapp/chats_screen.dart';
import 'package:flutter_application_4/teleapp/status_screen.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TeleApp'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [ChatScreen(), StatusScreen(), CallScreen()],
        ),
      ),
    );
  }
}

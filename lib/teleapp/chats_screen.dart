import 'package:flutter/material.dart';
import 'package:flutter_application_4/login_register-messnger/users.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) => buildItem(index),
        itemCount: names.length);
  }

  Widget buildItem(index) => InkWell(
        onLongPress: () {},
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('${images[index]}'),
          ),
          title: Text('${names[index]}'),
          subtitle: Text('My name is ahmad'),
          trailing: Text('data'),
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:flutter_application_4/students_widget/one.dart';

class popup extends StatefulWidget {
  popup({Key? key}) : super(key: key);

  @override
  State<popup> createState() => _popupState();
}

class _popupState extends State<popup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('popup'),
        actions: [popupmune()],
      ),
    );
  }

  Widget popupmune() {
    return PopupMenuButton<int>(
        onSelected: (item) => selected(context, item),
        icon: Icon(Icons.menu),
        itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('one'),
                value: 0,
              ),
              PopupMenuItem(
                child: Text('tow'),
                value: 1,
              ),
              PopupMenuItem(
                child: Text('three'),
                value: 2,
              )
            ]);
  }

  void selected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => one()));
        break;

      case 1:
        break;

      case 2:
        break;
    }
  }
}

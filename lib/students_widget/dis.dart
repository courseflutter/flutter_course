import 'package:flutter/material.dart';
import 'package:flutter_application_4/main.dart';
import 'package:flutter_application_4/students_widget/data.dart';

class DismissibleApp extends StatelessWidget {
  const DismissibleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: GlobalKey(),
              background: Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.delete),
                    Icon(Icons.archive),
                  ],
                ),
              ),
              child: ListTile(
                onTap: () {},
                title: Text('${data[index]}'),
                subtitle: Text('${sub[index]}'),
                trailing: Text('${time[index]}'),
              ),
              onDismissed: (direction) {
                data.removeAt(index);
              },
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_4/login_register-messnger/users.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(names.length, (index) => buildStatus(index)),
      ),
    );
  }

  Widget buildStatus(index) => Card(
        shadowColor: Colors.transparent,
        elevation: 15,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            SizedBox(
              height: 7,
            ),
            Container(
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  '${images[index]}',
                  fit: BoxFit.cover,
                  height: 150,
                  width: 150,
                )),
            SizedBox(
              height: 5,
            ),
            Text(
              '${names[index]}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            )
          ],
        ),
      );
}

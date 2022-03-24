import 'package:flutter/material.dart';
import 'package:flutter_application_4/users.dart';

class MessngerScreen extends StatelessWidget {
  const MessngerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/wp.jpg'),
            ),
            SizedBox(
              width: 15,
            ),
            Text('Chats')
          ],
        ),
        actions: [
          CircleAvatar(
              radius: 15,
              child: Icon(
                Icons.camera_alt,
                size: 17,
              )),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 15,
            child: Icon(
              Icons.edit,
              size: 15,
            ),
          ),
          SizedBox(width: 5)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStory(index),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                    itemCount: names.length),
              ),
              Divider(
                thickness: 2,
                height: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(
                  height: 12,
                ),
                itemBuilder: (context, index) => buildChat(index),
                itemCount: names.length,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChat(int index) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('${images[index]}'),
            ),
            CircleAvatar(
              radius: 8.5,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(radius: 7, backgroundColor: Colors.green)
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${names[index]}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'hello my name is fadi hello my name is fadihello my name is fadihello my name is fadi',
                      style: TextStyle(fontSize: 16),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(start: 5, end: 10),
                    child: Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                    ),
                  ),
                  Text('02:00 pm')
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildStory(int index) => Container(
        width: 55,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('${images[index]}'),
                ),
                CircleAvatar(
                  radius: 8.5,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                )
              ],
            ),
            Text(
              '${names[index]}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            )
          ],
        ),
      );
}

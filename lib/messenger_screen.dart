import 'package:flutter/material.dart';

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('images/wp.jpg'),
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
                          'sharo michel sharo michel sharo michel ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 50,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('images/wp.jpg'),
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
                          'sharo michel sharo michel sharo michel ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 50,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('images/wp.jpg'),
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
                          'sharo michel sharo michel sharo michel ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 50,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('images/wp.jpg'),
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
                          'sharo michel sharo michel sharo michel ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 50,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('images/wp.jpg'),
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
                          'sharo michel sharo michel sharo michel ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 50,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('images/wp.jpg'),
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
                          'sharo michel sharo michel sharo michel ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 50,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('images/wp.jpg'),
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
                          'sharo michel sharo michel sharo michel ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 50,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('images/wp.jpg'),
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
                          'sharo michel sharo michel sharo michel ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 50,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('images/wp.jpg'),
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
                          'sharo michel sharo michel sharo michel ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 50,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('images/wp.jpg'),
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
                          'sharo michel sharo michel sharo michel ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 50,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('images/wp.jpg'),
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
                          'sharo michel sharo michel sharo michel ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 50,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('images/wp.jpg'),
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
                          'sharo michel sharo michel sharo michel ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

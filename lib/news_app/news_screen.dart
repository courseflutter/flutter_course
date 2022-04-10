import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text('News App'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                duration: Duration(seconds: 2),
                curve: Curves.easeIn,
                padding: EdgeInsets.fromLTRB(0, 16.0, 16.0, 8.0),
                child: ListTile(
                  leading: CircleAvatar(),
                  title: Text('Omar'),
                )),
            ListTile(leading: CircleAvatar(), title: Text('Setting'))
          ],
        ),
      ),
      body: Card(
        color: Colors.grey,
        clipBehavior: Clip.antiAlias,
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/flowerw.jpg'),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'White Flower',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                RatingStars(
                  valueLabelVisibility: false,
                  animationDuration: Duration(seconds: 2),
                  value: rating,
                  starSize: 25,
                  onValueChanged: (value) {
                    setState(() {
                      if (rating == 1.0 && value == 1.0) {
                        rating = 0;
                      } else {
                        rating = value;
                      }
                    });
                    print(value);
                  },
                )
              ],
            ),
            Text(
              'Nature',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

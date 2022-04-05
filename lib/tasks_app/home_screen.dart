import 'package:flutter/material.dart';
import 'package:flutter_application_4/tasks_app/archivedtasks.dart';
import 'package:flutter_application_4/tasks_app/donetasks_screen.dart';
import 'package:flutter_application_4/tasks_app/tasks_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List screens = [TasksScreen(), DoneScreen(), ArchivedScreen()];
  List titles = ['Tasks', 'DoneTasks', 'ArchivedTasks'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${titles[currentIndex]}'),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Done'),
          BottomNavigationBarItem(
              icon: Icon(Icons.archive_rounded), label: 'Archived')
        ],
      ),
    );
  }
}

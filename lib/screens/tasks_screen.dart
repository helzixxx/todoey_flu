import 'package:flutter/material.dart';
import 'package:todoey_flu/constants.dart';
import '../widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Buy milk',
      'Buy eggs',
      'Buy coffee',
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF63C9FE),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 50.0,
                    color: Color(0xFF63C9FE),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Todoey',
                  style: todoeyTextStyle,
                ),
                Text(
                  '12 tasks',
                  style: tasksTextStyle,
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 100.0,
              decoration: containerDecoration,
              child: TasksList(items: items),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF63C9FE),
        child: const Icon(Icons.add),
      ),
    );
  }
}

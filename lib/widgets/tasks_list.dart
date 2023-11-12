import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
    required this.items,
  });

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return CheckboxListTile(
          title: Text(items[index]),
          value: false,
          onChanged: (bool? value) {},
        );
      },
    );
  }
}

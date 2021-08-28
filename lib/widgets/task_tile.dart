import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final void Function(bool?)? onChange;
  final void Function()? onLongPress;

  TaskTile({
    required this.title,
    this.isChecked = false,
    this.onChange,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: GestureDetector(
              onLongPress: onLongPress,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: isChecked ? FontWeight.w300 : FontWeight.w500,
                  fontSize: 17,
                  decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Checkbox(
              onChanged: onChange,
              value: isChecked,
            ),
          )
        ],
      ),
    );
  }
}

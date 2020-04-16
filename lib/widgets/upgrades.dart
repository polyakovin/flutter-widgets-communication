import 'package:flutter/material.dart';

class Upgrades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(icon: Icon(Icons.check_box), onPressed: () {}),
        IconButton(icon: Icon(Icons.calendar_today), onPressed: () {}),
        IconButton(icon: Icon(Icons.add_alert), onPressed: () {}),
        IconButton(icon: Icon(Icons.alternate_email), onPressed: () {}),
        IconButton(icon: Icon(Icons.assessment), onPressed: () {}),
        IconButton(icon: Icon(Icons.widgets), onPressed: () {}),
        IconButton(icon: Icon(Icons.assignment_late), onPressed: () {}),
        IconButton(icon: Icon(Icons.attach_file), onPressed: () {}),
      ],
    );
  }
}

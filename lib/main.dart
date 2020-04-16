import 'package:flutter/material.dart';
import './pages/homepage.dart';

void main() => runApp(GoalSpace());

class GoalSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/notelist_model.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  List<NoteList> _userNotesList = [
    NoteList('1', 'listTitle #1'),
    NoteList('2', 'listTitle #2'),
  ];

  void addNewList() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 400,
          padding: EdgeInsets.only(left: 30),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                child: Text(_userNotesList[index].listTitle),
              );
            },
            itemCount: _userNotesList.length,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30),
          child: InkWell(
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.add_circle), onPressed: () {}),
                Text('Add a new list')
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30),
          child: InkWell(
              child: Row(
            children: <Widget>[
              Text('Calendar view'),
              IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () {
                    // open calendar view
                  }),
            ],
          )),
        ),
      ],
    );
  }
}

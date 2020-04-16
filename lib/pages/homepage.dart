import 'package:flutter/material.dart';

import '../widgets/drawer_menu.dart';
import '../widgets/upgrades.dart';
import '../widgets/noteslist.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTextFieldShown = false;
  final noteTitleTextController = TextEditingController();
  NotesList notesList = NotesList(); // создаём инстанс класса NotesList

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerMenu(),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.grid_on,
                color: Colors.white,
              ),
              onPressed: () {
                // TODO: change list view to grid view
              })
        ],
        title: Text('Notes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: isTextFieldShown
                  ? TextField(
                      controller: noteTitleTextController,
                    )
                  : null,
              padding: EdgeInsets.only(right: 20, left: 20),
            ),
            Container(
              height: 300,
              child: notesList, // юзаем созданный ранее инстанс
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String titleText = noteTitleTextController.text;
          setState(() {
            if (titleText.length > 0) {
              notesList.addNewNote(titleText); // просто юзаем метод инстанса, как если бы напрямую обращались бы к его стейту
              noteTitleTextController.clear();
            }
            isTextFieldShown = !isTextFieldShown;
          });
        },
        child: Icon(Icons.add),
      ),
      endDrawer: Upgrades(),
    );
  }
}

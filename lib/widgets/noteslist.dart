import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../models/note_model.dart';

class NotesList extends StatefulWidget {
  final NotesListState notesListState = NotesListState(); // создаём и запоминаем стейт виджета

  void addNewNote(newNoteTitleText, {newNoteBodyText = 'empty'}) => notesListState.addNewNote(newNoteTitleText, newNoteBodyText: newNoteBodyText); // создаём копию (т.н. прокси) нужного метода из стейта

  @override
  NotesListState createState() => notesListState; // назначаем нашему виджету созданный ранее стейт
}

class NotesListState extends State<NotesList> {
  var randint = Uuid();
  final List<Note> notesListBuilder = [
    Note(
        date: DateTime.now(),
        id: '1',
        noteTitle: 'some note title text',
        noteBodyText: 'some note body text'),
    Note(
        date: DateTime.now(),
        id: '2',
        noteTitle: 'some2  note title text',
        noteBodyText: 'some no2te body text')
  ];

  void addNewNote(newNoteTitleText, {newNoteBodyText = 'empty'}) {
    setState(() {
      notesListBuilder.add(Note(
        noteTitle: newNoteTitleText,
        noteBodyText: newNoteBodyText,
        id: randint.v1(),
        date: DateTime.now(),
      ));
    });
  }

  void deleteNote(String deletedId) {
    setState(() {
      notesListBuilder.removeWhere((noteToDelete) {
        return noteToDelete.id == deletedId;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(left: 20, top: 15, right: 20),
          child: InkWell(
            child: Text(notesListBuilder[index].noteTitle),
            onTap: () {
              // open note description
            },
            onLongPress: () {
              // enable reordable drag function
            },
          ),
        );
      },
      itemCount: notesListBuilder.length,
    );
  }
}

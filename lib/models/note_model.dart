import 'package:flutter/foundation.dart';

class Note {
  @required
  final String id;
  final String noteTitle;
  final String noteBodyText;
  final DateTime date;

  Note({this.id, this.noteTitle, this.noteBodyText, this.date});
}

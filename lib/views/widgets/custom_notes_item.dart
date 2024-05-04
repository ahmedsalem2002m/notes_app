import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import '../edit_notes_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNotesView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color:  Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(
                note.title,
                style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              subtitle: Padding(
                padding:  const EdgeInsets.only(top: 16, bottom: 24),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black.withOpacity(.3),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                },
                icon: const Icon(size: 35, color: Colors.black, Icons.delete),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Text(
                note.date,
                style: TextStyle(
                    color: Colors.black.withOpacity(.3), fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}

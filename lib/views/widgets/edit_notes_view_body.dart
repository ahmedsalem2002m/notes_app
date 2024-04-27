import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import 'custom_app_bar.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title:  'Edit Note',icon: Icons.check,),
          SizedBox(height: 40,),
          CustomTextField(hint: 'title'),
          SizedBox(height: 16,),
          CustomTextField(hint: 'content',maxLines: 5,)
        ],
      ),
    );
  }
}

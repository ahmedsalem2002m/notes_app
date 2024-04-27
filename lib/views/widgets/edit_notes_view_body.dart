import 'package:flutter/material.dart';

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
          CustomAppBar(label: 'Edit Note',),
        ],
      ),
    );
  }
}
